<?php

class Desenvolvimento_MigracaoController extends Escola_Controller_Logado
{
    public function migracao()
    {
        $db = Zend_Registry::get("db");
        $db->beginTransaction();
        try {
            $ids = [
                [2, 13],
                [9, 6],
                [5, 8],
                [
                    [307, 309, 313, 146, 288, 531, 328],
                    8
                ],
                [
                    [1043, 1087],
                    6
                ],
                [7, 10]
            ];

            foreach ($ids as $id) {
                $this->migrar($id[0], $id[1]);
            }

            $db->commit();
        } catch (Exception $ex) {
            $db->rollBack();
            Escola_Util::trataErro($ex, false);
        }
    }

    public function migrar_transportes($ids, $id_grupo_destino)
    {

        if (!($ids && is_array($ids) && count($ids))) {
            return;
        }

        $db = Zend_Registry::get("db");

        $sql = "select descricao from transporte_grupo where id_transporte_grupo = ?";
        $obj_destino = Escola_DbUtil::first($sql, [$id_grupo_destino]);

        if (!$obj_destino) {
            return;
        }

        Escola_Util::log("--- Migrando Transportes de [" . implode(", ", $ids) . "] ===> [{$obj_destino->descricao}]");

        $this->atualizaServico($ids, $id_grupo_destino);

        Escola_Util::log("Atualizando Transportes ... ", false);
        // atualiza todos os transportes para o novo grupo
        $sql = "update transporte set id_transporte_grupo = ? where id_transporte in (" . implode(",", $ids) . ") ";
        $db->query($sql, [$id_grupo_destino]);
        Escola_Util::log("OK");
    }

    private function migrar_transporte_grupo($id_grupo_origem, $id_grupo_destino)
    {

        if (is_array($id_grupo_origem)) {
            return;
        }

        $db = Zend_Registry::get("db");

        $sql = "select descricao from transporte_grupo where id_transporte_grupo = ?";
        $obj_origem = Escola_DbUtil::first($sql, [$id_grupo_origem]);
        $obj_destino = Escola_DbUtil::first($sql, [$id_grupo_destino]);

        if (!$obj_destino) {
            return;
        }

        Escola_Util::log("--- Migrando de [{$obj_origem->descricao}] ===> [{$obj_destino->descricao}]");

        $this->atualizaServico($id_grupo_origem, $id_grupo_destino);
        $this->atualizaMotorista($id_grupo_origem, $id_grupo_destino);

        Escola_Util::log("Atualizando Transportes ... ", false);
        // atualiza todos os transportes para o novo grupo
        Escola_DbUtil::query("
            update transporte 
            set id_transporte_grupo = ? 
            where id_transporte_grupo = ? 
        ", [
            $id_grupo_destino,
            $id_grupo_origem
        ]);
        Escola_Util::log("OK");

        $this->excluir_transporte($id_grupo_origem);
    }

    private function migrar($id_grupo_origem, $id_grupo_destino)
    {

        $this->migrar_transportes($id_grupo_origem, $id_grupo_destino);
        $this->migrar_transporte_grupo($id_grupo_origem, $id_grupo_destino);
    }

    public function copiarServico($origem, $id_grupo_destino)
    {

        if (!($origem && isset($origem->id_servico_transporte_grupo) && $origem->id_servico)) {
            return null;
        }

        if (!$id_grupo_destino) {
            return null;
        }

        $db = Zend_Registry::get("db");

        $sql = "select stg.id_servico_transporte_grupo
        from servico_transporte_grupo stg
        where (stg.id_servico = :id_servico)
        and (stg.id_transporte_grupo = :id_grupo_destino)";
        $id_stg_destino = Escola_DbUtil::valor($sql, array(
            ":id_servico" => $origem->id_servico,
            ":id_grupo_destino" => $id_grupo_destino
        ));

        if ($id_stg_destino) {
            return $id_stg_destino;
        }

        // carregar os dados do registro, para copiar.
        $dados_origem = Escola_DbUtil::first("
                        select * from servico_transporte_grupo 
                        where (id_servico_transporte_grupo = ?)
                        ", array($origem->id_servico_transporte_grupo));

        // Ã© necessÃ¡rio gerar outro registro de valor.
        $valor_origem = Escola_DbUtil::first("
                        select * from valor where id_valor = ?
                        ", array($dados_origem->id_valor));

        $db->query("
                        insert into valor 
                        (id_moeda, valor)
                        values
                        (:id_moeda, :valor)
                        ", array(
            ":id_moeda" => $valor_origem->id_moeda,
            ":valor" => $valor_origem->valor
        ));
        $id_valor_destino = Escola_DbUtil::lastInsertId();

        Escola_DbUtil::query("insert into servico_transporte_grupo 
                        (id_servico, id_transporte_grupo, id_valor, validade_dias, obrigatorio, juros_dia, id_periodicidade, mes_referencia, vencimento_dias)
                        values 
                        (:id_servico, :id_transporte_grupo, :id_valor, :validade_dias, :obrigatorio, :juros_dia, :id_periodicidade, :mes_referencia, :vencimento_dias)
                        ", [
            ":id_servico" => $dados_origem->id_servico,
            ":id_transporte_grupo" => $id_grupo_destino,
            ":id_valor" => $id_valor_destino,
            ":validade_dias" => $dados_origem->validade_dias,
            ":obrigatorio" => $dados_origem->obrigatorio,
            ":juros_dia" => $dados_origem->juros_dia,
            ":id_periodicidade" => $dados_origem->id_periodicidade,
            ":mes_referencia" => $dados_origem->mes_referencia,
            ":vencimento_dias" => $dados_origem->vencimento_dias
        ]);

        return Escola_DbUtil::lastInsertId();
    }

    private function atualizaServico($id_grupo_origem, $id_grupo_destino)
    {
        $db = Zend_Registry::get("db");

        $where = $params = [];

        if (!$id_grupo_origem) {
            return;
        }

        if (is_array($id_grupo_origem)) {
            $where[] = "ss.id_transporte in (" . implode(",", $id_grupo_origem) . ")";
        } elseif ($id_grupo_origem) {
            $where[] = "stg.id_transporte_grupo = :id_grupo_origem";
            $params[":id_grupo_origem"] = $id_grupo_origem;
        }

        Escola_Util::log("Atualizando ServiÃ§os do Transporte de Origem ... ");
        // prepara atualizaÃ§Ã£o dos serviÃ§os
        $sql = "select stg.id_servico_transporte_grupo, s.id_servico, s.descricao as servico, count(ss.id_servico_solicitacao) as quantidade
        from servico_solicitacao ss
        inner join servico_transporte_grupo stg on ss.id_servico_transporte_grupo = stg.id_servico_transporte_grupo
        inner join servico s on stg.id_servico = s.id_servico
        where ( " . implode(" ) and ( ", $where) . " )
        group by stg.id_servico_transporte_grupo, s.id_servico, s.descricao
        order by s.descricao";

        $servicos_origem = Escola_DbUtil::listar($sql, $params);

        if (!Escola_Util::isResultado($servicos_origem)) {
            // se nÃ£o existe nenhum registro vinculado ao transporte, sai do mÃ©todo.
            Escola_Util::log();
            Escola_Util::log("Nenhum ServiÃ§o DisponÃ­vel ... Finalizando!");
            return;
        }

        // para cada serviÃ§o verificar se existe equivalente no destino
        foreach ($servicos_origem as $origem) {

            $id_stg_destino = $this->copiarServico($origem, $id_grupo_destino);

            if (!$id_stg_destino) {
                throw new Exception("Falha! Novo ServiÃ§o nÃ£o foi criado!");
            }

            // atualiza todos os serviÃ§os apontando pro novo serviÃ§o_transporte_grupo
            $db->query("
                update servico_solicitacao 
                set id_servico_transporte_grupo = ?
                where (id_servico_transporte_grupo = ?)
            ", array($id_stg_destino, $origem->id_servico_transporte_grupo));
        }
    }

    private function atualizaMotorista($id_grupo_origem, $id_grupo_destino)
    {
        $db = Zend_Registry::get("db");

        Escola_Util::log("Atualizando Motoristas ... ", false);
        // atualiza todos os transportes para o novo grupo
        $sql = "update motorista set id_transporte_grupo = ? where id_transporte_grupo = ? ";
        $db->query($sql, [$id_grupo_destino, $id_grupo_origem]);
        Escola_Util::log("OK");
    }

    public function excluir_transporte($id = null)
    {
        $db = Zend_Registry::get("db");

        if (!$id) {
            $id = Escola_Util::getParametro("-id");
        }

        $in = $db->getConnection()->inTransaction();

        if (!$in) {
            $db->beginTransaction();
        }

        try {
            if (!$id) {
                throw new Exception("Falha ao Excluir Transporte, Nenhum Transporte Especificado!");
            }

            // apaga grupo origem
            Escola_Util::log("Excluindo Grupo Origem ... ", false);
            $db->query("
            delete from servico_transporte_grupo 
            where (id_transporte_grupo = ?)
            ", [$id]);

            $db->query("
            delete from transporte_grupo 
            where (id_transporte_grupo = ?)
            ", [$id]);
            Escola_Util::log("OK");

            if (!$in) {
                $db->commit();
            }
        } catch (Exception $ex) {
            if (!$in) {
                $db->rollBack();
            }
        }
    }

    public function migrar_pj_carga()
    {
        $db = Zend_Registry::get("db");

        $in = $db->getConnection()->inTransaction();

        if (!$in) {
            $db->beginTransaction();
        }

        try {

            $id_carga = Escola_DbUtil::valor("
                select id_transporte_grupo
                from transporte_grupo
                where (lower(chave) = ?)
            ", ['carga']);

            if (!$id_carga) {
                throw new Exception("Falha! Grupo de Carga Não Encontrado!");
            }

            $cnpjs = [
                "05824316000111", // transwood
                "04872156000113", // sabino
                "03557255000148", // trans gold
            ];

            $ids = Escola_DbUtil::listArray("
                select t.id_transporte
                from transporte t
                    inner join transporte_pessoa tp on t.id_transporte = tp.id_transporte
                    inner join pessoa p on tp.id_pessoa = p.id_pessoa
                    inner join pessoa_juridica pj on p.id_pessoa = pj.id_pessoa
                    inner join transporte_grupo tg on t.id_transporte_grupo = tg.id_transporte_grupo
                where (tp.id_transporte_pessoa_status = 1) -- ativo
                    and (tp.id_transporte_pessoa_tipo = 1) -- permissionário
                    and (tg.id_transporte_grupo <> ?) -- carga
                    and (pj.cnpj in (" . implode(", ", $cnpjs) . "))
                order by tg.descricao, t.codigo
            ", [$id_carga]);

            $this->migrar_transportes($ids, $id_carga);

            if (!$in) {
                $db->commit();
            }
        } catch (Exception $ex) {
            if (!$in) {
                $db->rollBack();
            }
            Escola_Util::trataErro($ex);
        }
    }
}
