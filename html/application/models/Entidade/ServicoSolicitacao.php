<?php
class ServicoSolicitacao extends Escola_Entidade {

    protected $_valor = false;
    private $licenca_atual = null;

    /**
     * @return null
     */
    public function getLicencaAtual() {
        return $this->licenca_atual;
    }

    /**
     * @param null $licenca_atual
     */
    public function setLicencaAtual($licenca_atual) {
        $this->licenca_atual = $licenca_atual;
    }

    public function getServicoTransporteGrupo() {
        return $this->findParentRow("TbServicoTransporteGrupo");
    }
    
    public function getServico() {
        $stg = $this->getServicoTransporteGrupo();
        if (!$stg) {
            return null;
        }
        return $stg->getServico();
    }
        
    public function pegaServicoSolicitacaoStatus() {
        $obj = $this->findParentRow("TbServicoSolicitacaoStatus");
        if ($obj && $obj->getId()) {
            return $obj;
        }
        return false;
    }
    
    public function pega_valor() {
        if ($this->_valor) {
            return $this->_valor;
        }
        $valor = $this->findParentRow("TbValor");
        if (!$valor) {
            $tb = new TbValor();
            $valor = $tb->createRow();
        }
        return $valor;
    }
    
    public function init() {
        parent::init();
        $this->_valor = $this->pega_valor();
        if (!$this->getId()) {
            $tb = new TbServicoSolicitacaoStatus();
            $sss = $tb->getPorChave("AG");
            if ($sss) {
                $this->id_servico_solicitacao_status = $sss->getId();
            }
            $hoje = new Zend_Date();
            $this->data_solicitacao = $hoje->toString("YYYY-MM-dd");
            $this->ano_referencia = $hoje->toString("YYYY");
        }
    }
    
    public function setFromArray(array $dados) {
        $this->_valor->setFromArray($dados);
        if (isset($dados["data_inicio"])) {
            $dados["data_inicio"] = Escola_Util::montaData($dados["data_inicio"]);
        }
        if (isset($dados["data_validade"])) {
            $dados["data_validade"] = Escola_Util::montaData($dados["data_validade"]);
        }
        if (isset($dados["data_vencimento"])) {
            $dados["data_vencimento"] = Escola_Util::montaData($dados["data_vencimento"]);
        }
        if (isset($dados["mes_referencia"])) {
            if (!$dados["mes_referencia"]) {
                $dados["mes_referencia"] = null;
            }
        }
        parent::setFromArray($dados);
    }
    
    public function pega_proximo_codigo() {
        $db = Zend_Registry::get("db");
        $sql = $db->select();
        $sql->from(array("servico_solicitacao"), array("maximo" => "max(codigo)"));
        $sql->where("id_servico_transporte_grupo = {$this->id_servico_transporte_grupo}");
        $sql->where("ano_referencia = {$this->ano_referencia}");
        $stmt = $db->query($sql);
        if ($stmt && $stmt->rowCount()) {
            $obj = $stmt->fetch(Zend_db::FETCH_OBJ);
            return ($obj->maximo + 1);
        }
        return 1;
    }
    
    public function gerarOcorrencia($ssot_chave, $obs = "") {
        if (!$this->getId()) {
            throw new Exception("Falha ao Salvar Solicitaï¿½ï¿½o, Dados Invï¿½lidos!");
        }

        $tb = new TbServicoSolicitacaoOcorrenciaTipo();
        $ssot = $tb->getPorChave($ssot_chave);
        if (!$ssot) {
            $tb->recuperar();
        }
        $ssot = $tb->getPorChave($ssot_chave);
        if (!$ssot) {
            throw new Exception("Falha ao Gerar Ocorrï¿½ncia, Tipo de Ocorrï¿½ncia Nï¿½o Encontrado!");
        }

        $usuario = TbUsuario::pegaLogado();
        if (!$usuario) {
            throw new Exception("Falha ao Gerar Ocorrï¿½ncia, Nenhum Usuï¿½rio Logado!");
        }

        $sso_dados = array();
        $sso_dados["id_servico_solicitacao"] = $this->getId();
        $sso_dados["id_servico_solicitacao_ocorrencia_tipo"] = $ssot->getId();
        $sso_dados["id_usuario"] = $usuario->getId();
        $sso_dados["observacoes"] = $obs;

        $tb = new TbServicoSolicitacaoOcorrencia();
        $sso = $tb->createRow();
        $sso->setFromArray($sso_dados);
        $errors = $sso->getErrors();
        if ($errors) {
            throw new Exception("Falha ao Gerar Ocorrï¿½ncia: <ul><li>" . implode("</li><li>", $errors) . "</li></ul>");
        }
        $sso->save();        
    }
     
    public function save() {
        $in_trans = true;
        $db = Zend_Registry::get("db");
        try {
            $db->beginTransaction();
        } catch (Exception $ex) {
            $in_trans = false;
        }
        try {
            
            $id = $this->getId();
            
            if (!$this->_valor->valor) {
                $ss = $this->findParentRow("TbServicoTransporteGrupo");
                if ($ss) {
                    $vlr = $ss->pega_valor();
                    $this->_valor->valor = $vlr->valor;
                }
            }
            
            $this->id_valor = $this->_valor->save();
            if (!$this->codigo) {
                $this->codigo = $this->pega_proximo_codigo();
            }

            $return = parent::save();
            
            if (!$id) {
                $this->gerarOcorrencia("C");
            }
            
            if ($in_trans) {
                $db->commit();
            }
            
            return $return;
            
        } catch (Exception $ex) {
            if ($in_trans) {
                $db->rollBack();
            }
            
            throw $ex;
        }
    }
    
    public function getErrors() {
		$msgs = array();
		if (!trim($this->id_servico_solicitacao_status)) {
			$msgs[] = "CAMPO STATUS DA SOLICITAï¿½ï¿½O DE SERVIï¿½O OBRIGATï¿½RIO!";
		}
        if (!trim($this->id_servico_transporte_grupo)) {
            $msgs[] = "CAMPO Vï¿½NCULO DE VEï¿½CULO COM GRUPO OBRIGATï¿½RIO!";
        }
        if (!trim($this->ano_referencia)) {
            $msgs[] = "CAMPO ANO DE REFERï¿½NCIA OBRIGATï¿½RIO!";
        }
        if ($this->codigo) {
            $tb = $this->getTable();
            $sql = $tb->select();
            $sql->where("id_servico_transporte_grupo = {$this->id_servico_transporte_grupo}");
            $sql->where("ano_referencia = {$this->ano_referencia}");
            $sql->where("codigo = {$this->codigo}");
            $sql->where("id_servico_solicitacao <> {$this->getId()}");
            $rs = $tb->fetchAll($sql);
            if ($rs && count($rs)) {
                $msgs[] = "Cï¿½DIGO DE SOLICITITAï¿½ï¿½O Jï¿½ UTILIZADO!";
            }
        }
        if (count($msgs)) {
            return $msgs;
        }
        return false;        
    }
    
    public function getDeleteErrors() {
        $msgs = array();
        
        if ($this->pago()) {
            $msgs[] = "Nï¿½O ï¿½ PERMITIDO EXCLUIR UM SERVIï¿½O Jï¿½ PAGO!";
        }
/*
        $relatorios = $this->findDependentRowset("TbServicoSolicitacaoPagamento");
        if ($relatorios) {
            $msgs[] = "Existem Registros Vinculados a este! Apague as referencias antes de excluir!";
        }
*/
        if (count($msgs)) {
            return $msgs;
        }
        return false;        
    }
     
    public function delete() {
        $objs = $this->findDependentRowset("TbServicoSolicitacaoPagamento");
        if ($objs && count($objs)) {
            foreach ($objs as $obj) {
                $obj->delete();
            }
        }
        $tb = new TbBoletoItemTipo();
        $bit = $tb->getPorChave("SS");
        if ($bit) {
            $tb = new TbBoletoItem();
            $bis = $tb->listar(array("id_boleto_item_tipo" => $bit->getId(), "chave" => $this->getId()));
            if ($bis && count($bis)) {
                foreach ($bis as $bi) {
                    $bi->delete();
                }
            }
        }
        $objs = $this->pegaOcorrencias();
        if ($objs) {
            foreach ($objs as $obj) {
                $obj->delete();
            }
        }
        parent::delete();
    }
    
    public function aguardando_pagamento() {
        $sss = $this->findParentRow("TbServicoSolicitacaoStatus");
        if ($sss) {
            return $sss->aguardando_pagamento();
        }
        return false;
    }
    
    public function pago() {
        $sss = $this->findParentRow("TbServicoSolicitacaoStatus");
        if ($sss) {
            return $sss->pago();
        }
        return false;
    }
    
    public function cancelado() {
        $sss = $this->findParentRow("TbServicoSolicitacaoStatus");
        if ($sss) {
            return $sss->cancelado();
        }
        return false;
    }
    
    public function atualiza_datas() {
        $stg = $this->findParentRow("TbServicoTransporteGrupo");
        if ($stg) {
            $periodicidade = $stg->findParentRow("TbPeriodicidade");
            if ($periodicidade) {
                $data_inicio = new Zend_Date();
                $data_inicio->setYear($this->ano_referencia);
                $data_inicio->setDay(1);
                if ($periodicidade->mensal()) {
                    $this->data_inicio = $data_inicio->toString("YYYY-MM-dd");
                    $this->mes_referencia = $data_inicio->toString("MM");
                } elseif ($periodicidade->anual()) {
                    while ($data_inicio->toString("M") != $stg->mes_referencia) {
                        $data_inicio->subMonth(1);
                    }
                    $data_inicio->setYear($this->ano_referencia);
                    $this->data_inicio = $data_inicio->toString("YYYY-MM-dd");
                }
                $data_inicio->addDay($stg->validade_dias);
                $this->data_validade = $data_inicio->toString("YYYY-MM-dd");
            } else {
                $data_inicio = new Zend_Date();
                $this->data_inicio = $data_inicio->toString("YYYY-MM-dd");
                $data_inicio->addDay($stg->validade_dias);
                $this->data_validade = $data_inicio->toString("YYYY-MM-dd");
            }
        }
        if ($stg->vencimento_dias) {
            $vdias = $stg->vencimento_dias;
        } else {
            $vdias = 10;
        }
        $data_atual = new Zend_Date();
        $data_atual->addDay($vdias);
        $this->data_vencimento = $data_atual->toString("YYYY-MM-dd");
    }
    
    public function pegaPagamento() {
        $tb = new TbServicoSolicitacaoPagamento();
        $rs = $tb->fetchAll("id_servico_solicitacao = {$this->getId()}");
        if ($rs && count($rs)) {
            return $rs->current();
        }
        return false;
    }
    
    public function mostrar_referencia() {
        $items = array();
        if ($this->ano_referencia) {
            $items[] = $this->ano_referencia;
        }
        $stg = $this->findParentRow("TbServicoTransporteGrupo");
        if ($stg) {
            $periodicidade = $stg->findParentRow("TbPeriodicidade");
            if ($periodicidade) {
                if ($periodicidade->mensal() && $this->mes_referencia) {
                    $items[] = Escola_Util::pegaMes($this->mes_referencia);
                }
            }
        }
        if (count($items)) {
            return implode(" - ", $items);
            
        }
        return "--";
    }
    
    public function vencida() {
        $hoje = new Zend_Date(date("Y-m-d"));
        $inicio = new Zend_Date($this->data_inicio);
        $final = new Zend_Date($this->data_validade);
        if ($hoje->equals($final) || $hoje->isEarlier($final)) {
            return false;
        }
        return true;
    }
    
    public function foraPrazo() {
        $hoje = new Zend_Date(date("Y-m-d"));
        $inicio = new Zend_Date($this->data_inicio);
        $final = new Zend_Date($this->data_validade);
        if (($hoje->equals($inicio) || $hoje->isLater($inicio)) && ($hoje->equals($final) || $hoje->isEarlier($final))) {
            return false;
        }
        return true;
    }
    
    public function valido() {
        if ($this->getId()) {
            if ($this->pago()) {
                return (!$this->foraPrazo() && !$this->cancelado());
            }
        }
        return false;
    }
    
    public function validarEmitir() {
        if ($this->vencida()) {
            //return array("SERVIï¿½O FORA DA VALIDADE!");
        }
        $stg = $this->findParentRow("TbServicoTransporteGrupo");
        if (!$stg) {
            return false;
        }
        return $stg->validarEmitir($this);
    }
    
    public function toPDF() {
        $stg = $this->findParentRow("TbServicoTransporteGrupo");
        if (!$stg) {
            return false;
        }
        return $stg->toPDF($this);
    }
    
    public function mostrar_numero() {
        $txt = array();
        if ($this->codigo) {
            $txt[] = Escola_Util::zero($this->codigo, 4);
        }
        if ($this->ano_referencia) {
            $txt[] = $this->ano_referencia;
        }
        if (count($txt)) {
            return implode("/", $txt);
        }
        return "";
    }
    
    public function pegaReferencia() {
        $tb = false;
        switch ($this->tipo) {
            case "TR": $tb = new TbTransporte(); break;
            case "MO": $tb = new TbMotorista(); break;
            case "IN": $tb = new TbInterdicao(); break;
            case "TV": $tb = new TbTransporteVeiculo(); break;
            case "TP": $tb = new TbTransportePessoa(); break;
            case "AI": $tb = new TbAutoInfracao(); break;
            case "NO": $tb = new TbAutoInfracaoNotificacao(); break;
        }
        if ($tb) {
            return $tb->pegaPorId($this->chave);
        }
        return false;
    }
    
    public function motorista() {
        return ($this->tipo == "MO");
    }
    
    public function transporte() {
        return ($this->tipo == "TR");
    }
    
    public function interdicao() {
        return ($this->tipo == "IN");
    }
    
    public function veiculo() {
        return ($this->tipo == "TV");
    }
    
    public function pessoa() {
        return ($this->tipo == "TP");
    }
    
    public function auto_infracao() {
        return ($this->tipo == "AI");
    }
    
    public function auto_infracao_notificacao() {
        return ($this->tipo == "NO");
    }
    
    public function mostrarStatus() {
        $txt = "";
        $status = $this->findParentRow("TbServicoSolicitacaoStatus");
        if ($status) {
            $txt .= $status->toString();
        }
        if ($this->pago() && $this->vencida()) {
            $txt .= " (VENCIDA)";
        }
        return $txt;
    }
    
    public function mostrarStatusHTML() {
        $txt = "";
        $status = $this->findParentRow("TbServicoSolicitacaoStatus");
        if ($status) {
            if (!$this->cancelado()) {
                if ($this->pago() && $this->vencida()) {
                    $txt .= " (VENCIDA)";
                }
            }
            $txt = $status->toHTML($txt);
        }
        return $txt;
    }
    
    public function cancelar() {
        $in_trans = true;
        $db = Zend_Registry::get("db");
        try {
            $db->beginTransaction();
        } catch (Exception $ex) {
            $in_trans = false;
        }
        try {
            if ($this->pago()) {
                throw new Exception("Falha ao Executar Operaï¿½ï¿½o, Serviï¿½o Pago!");
            }

            $tb = new TbServicoSolicitacaoStatus();
            $sss = $tb->getPorChave("CA");
            if (!$sss) {
                throw new Exception("Falha ao Executar Operaï¿½ï¿½o, Status Invï¿½lido!");
            }
            $this->id_servico_solicitacao_status = $sss->getId();
            $this->save();
            
            $this->gerarOcorrencia("CA");
            
            if ($in_trans) {
                $db->commit();
            }
            
        } catch (Exception $ex) {
            if ($in_trans) {
                $db->rollBack();
            }
            
            throw $ex;
        }
    }
    
    public function pegaTransporte() {
        $referencia = $this->pegaReferencia();
        if ($referencia) {
            if ($this->transporte()) {
                return $referencia;
            } elseif ($this->veiculo() || $this->pessoa()) {
                $transporte = $referencia->findParentRow("TbTransporte");
                if ($transporte) {
                    return $transporte;
                }
            }
        }
        return false;
    }
    
    public function pegaBancoConvenio() {
        $stg = $this->findParentRow("TbServicoTransporteGrupo");
        if ($stg) {
            $tg = $stg->findParentRow("TbTransporteGrupo");
            if ($tg) {
                $bc = $tg->findParentRow("TbBancoConvenio");
                if ($bc) {
                    return $bc;
                }
            }
        }
        $bc = TbBancoConvenio::pegaPadrao();
        if ($bc) {
            return $bc;
        }
        return false;
    }
    
    public function toString() {
        $txt = array();
        $stg = $this->findParentRow("TbServicoTransporteGrupo");
        if ($stg) {
            $servico = $stg->findParentRow("TbServico");
            if ($servico) {
                $txt[] = $servico->toString();
            }
        }
        $txt[] = $this->mostrar_numero();
        $txt[] = $this->pega_valor()->toString();
        $ref = $this->pegaReferencia();
        if ($ref) {
            $txt[] = $ref->toString();
        }
        if (count($txt)) {
            return implode(" - ", $txt);
        }
        return "";
    }
    
    public function confirmar_pagamento($dados = array()) {
        $in_trans = true;
        $db = Zend_Registry::get("db");
        try {
            $db->beginTransaction();
        } catch (Exception $ex) {
            $in_trans = false;
        }
        try {
            if ($this->pago()) {
                throw new Exception("Falha ao Executar Operacao, Solicitacao Ja Paga!");
            }
            
            if (!isset($dados["valor_pago"]) || $dados["valor_pago"]) {
                $dados["valor_pago"] = Escola_Util::number_format($this->_valor->valor);
            }
            
            $dados["id_servico_solicitacao"] = $this->getId();
            $tb = new TbServicoSolicitacaoPagamento();
            $ssp = $tb->createRow();
            $ssp->setFromArray($dados);
            $errors = $ssp->getErrors();
            if ($errors) {
                throw new Exception("Falha ao Confirmar Pagamento: <ul><li>" . implode("</li><li>", $errors) . "</li></ul>");
            }
            $ssp->save();
            
            $this->gerarOcorrencia("P");
            
            if ($in_trans) {
                $db->commit();
            }
            
        } catch (Exception $ex) {
            if ($in_trans) {
                $db->rollBack();
            }
            
            throw $ex;
        }
    }
    
    public function pegaPessoa() {
        $obj = $this->pegaReferencia();
        if ($obj) {
            $transporte = $this->pegaTransporte();
            if ($transporte) {
                $tp = $transporte->pegaProprietario();
                if ($tp) {
                    $pessoa = $tp->findParentRow("TbPessoa");
                    if ($pessoa) {
                        return $pessoa;
                    }
                }
            } elseif ($this->motorista()) {
                $pm = $obj->findParentRow("TbPessoaMotorista");
                if ($pm) {
                    $pf = $pm->findParentRow("TbPessoaFisica");
                    if ($pf) {
                        $pessoa = $pf->findParentRow("TbPessoa");
                        if ($pessoa) {
                            return $pessoa;
                        }
                    }
                }
            } elseif ($this->interdicao()) {
                $pessoa = $obj->findParentRow("TbPessoa");
                if ($pessoa) {
                    return $pessoa;
                }
            } elseif ($this->auto_infracao()) {
                $ain = $obj->pegaNotificacao();
                if ($ain) {
                    $pf = $ain->findParentRow("TbPessoaFisica");
                    if ($pf) {
                        $pessoa = $pf->findParentRow("TbPessoa");
                        if ($pessoa) {
                            return $pessoa;
                        }
                    }
                }
            } elseif ($this->auto_infracao_notificacao()) {
                $pf = $obj->findParentRow("TbPessoaFisica");
                if ($pf) {
                    $pessoa = $pf->findParentRow("TbPessoa");
                    if ($pessoa) {
                        return $pessoa;
                    }
                }
            }
        }
        return false;
    }
    
    public function form_pagamento(Zend_View_Abstract $view) {
        $valor_total = $this->pega_valor();
        $tb = new TbMoeda();
        $moeda = $tb->pega_padrao();
        $referencia = $this->pegaReferencia();
        $stg = $this->findParentRow("TbServicoTransporteGrupo");
        
        $valor_pagar = $this->pega_valor_pagar();
        $valor_desconto = 0;
        $desconto = $this->pegaDesconto();
        if ($desconto) {
            $valor_desconto = $desconto->valor;
        }
        
        ob_start();
?>
        <script type="text/javascript">
            $(document).ready(function() {
                $("#data_pagamento").focus().select();
            });
        </script>
        <input type="hidden" name="id_servico_solicitacao" id="id_servico_solicitacao" value="<?php echo $this->getId(); ?>" />
        <?php if ($referencia) { ?>
            <dl class="dl-horizontal">
                <dt>Auto de Infração</dt>
                <dd><?php echo $referencia->toString(); ?></dd>
            </dl>
        <?php } ?>
        <dl class="dl-horizontal">
            <dt>Serviço:</dt>
            <dd><?php echo $stg->findParentRow("TbServico")->toString(); ?></dd>
        </dl>
        <dl class="dl-horizontal">
            <dt>Referência</dt>
            <dd><?php echo $this->mostrar_referencia(); ?></dd>
        </dl>
        <dl class="dl-horizontal">
            <dt>Valor:</dt>
            <dd><?php echo $valor_total->toString(); ?></dd>
        </dl>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="data_pagamento">Data Pagamento:</label>
                    <input type="text" name="data_pagamento" id="data_pagamento" class="form-control data" value="<?php echo date("d/m/Y"); ?>" />
                </div>
            </div>
            <div class="col-md-3">
                <?php
                $ctrl = new Escola_Form_Element_Valor("valor_pago");
                $ctrl->setLabel("Valor Pago:");
                $ctrl->setValue($valor_pagar);
                if ($moeda) {
                    $ctrl->set_moeda($moeda);
                }
                echo $ctrl->render($view);
            ?>
            </div>
            <div class="col-md-3">
                <?php

                $ctrl = new Escola_Form_Element_Valor("valor_juros");
                $ctrl->setLabel("Juros:");
                $ctrl->setValue(0);
                if ($moeda) {
                    $ctrl->set_moeda($moeda);
                }
                echo $ctrl->render($view);
                ?>
            </div>
            <div class="col-md-3">
                <?php
                $ctrl = new Escola_Form_Element_Valor("valor_desconto");
                $ctrl->setLabel("Desconto:");
                $ctrl->setValue($valor_desconto);
                if ($moeda) {
                    $ctrl->set_moeda($moeda);
                }
                echo $ctrl->render($view);
                ?>
            </div>

<?php
        $html = ob_get_contents();
        ob_end_clean();
        return $html;
    }
    
    public function pegaDesconto() {
        $rs = $this->findDependentRowSet("TbServicoSolicitacaoDesconto");
        if ($rs && count($rs)) {
            $obj = $rs->current();
            return $obj;
        }
        return false;
    }
    
    public function form_desconto(Zend_View_Abstract $view) {
        $valor_a_pagar = $this->pega_valor();
        $tb = new TbMoeda();
        $moeda = $tb->pega_padrao();
        $referencia = $this->pegaReferencia();
        $stg = $this->findParentRow("TbServicoTransporteGrupo");
        ob_start();
?>
        <script type="text/javascript">
            $(document).ready(function() {
                $("#valor").focus().select();
            });
        </script>
        <input type="hidden" name="id_servico_solicitacao" id="id_servico_solicitacao" value="<?php echo $this->getId(); ?>" />
        <?php if ($referencia) { ?>
            <dl class="dl-horizontal">
                <dt>Auto de Infração:</dt>
                <dd><?php echo $referencia->toString(); ?></dd>
            </dl>
        <?php } ?>
        <dl class="dl-horizontal">
            <dt>Serviço:</dt>
            <dd><?php echo $stg->findParentRow("TbServico")->toString(); ?></dd>
        </dl>
        <dl class="dl-horizontal">
            <dt>Referência:</dt>
            <dd><?php echo $this->mostrar_referencia(); ?></dd>
        </dl>
        <dl class="dl-horizontal">
            <dt>Valor:</dt>
            <dd><?php echo $valor_a_pagar->toString(); ?></dd>
        </dl>
        <div class="col-md-4">
        <?php
        $ctrl = new Escola_Form_Element_Valor("valor");
        $ctrl->setLabel("Desconto:");
        $ctrl->setValue(0);
        if ($moeda) {
            $ctrl->set_moeda($moeda);
        }
        echo $ctrl->render($view);
        ?>
        </div>
        <div class="col-md-4">
        <div class="form-group">
            <label for="motivo">Motivo do Desconto:</label>
            <textarea name="motivo" id="motivo" rows="6" class="form-control"></textarea>
        </div>
        </div>
        <?php
        $html = ob_get_contents();
        ob_end_clean();
        return $html;
    }
    
    public function pega_valor_pagar() {
        $obj_total = $this->pega_valor();
        if ($obj_total) {
            $valor_total = $obj_total->valor;
            $desconto = $this->pegaDesconto();
            if ($desconto) {
                $valor_desconto = $desconto->valor;
                if ($valor_desconto) {
                    if ($valor_total > $valor_desconto) {
                        return ($valor_total - $valor_desconto);
                    }
                    return 0;
                }
            }
            return $valor_total;
        }
        return 0;
    }
    
    public function cancelar_pagamento() {
        $in_trans = true;
        try {
            $db = Zend_Registry::get("db");
            $db->beginTransaction();
        } catch (Exception $ex) {
            $in_trans = false;
        }
        try {
            if (!$this->pago()) {
                throw new Exception("Falha ao Executar Operaï¿½ï¿½o, Pagamento nï¿½o Confirmado!");
            }
            $tb = new TbServicoSolicitacaoStatus();
            $sss = $tb->getPorChave("AG"); // aguardando pagamento
            if (!$sss) {
                throw new Exception("Falha ao Executar Operaï¿½ï¿½o, Status de Pagamento nï¿½o Carregado!");
            }
            
            $pagamento = $this->pegaPagamento();
            if ($pagamento) {
                $pagamento->delete();
            }

            $this->id_servico_solicitacao_status = $sss->getId();
            $this->save();
            
            $this->gerarOcorrencia("CP");
            
            if ($in_trans) {
                $db->commit();
            }
        } catch (Exception $ex) {
            if ($in_trans) {
                $db->rollBack();
            }
            throw $ex;
        }
    }
    
    public function pegaOcorrencias($dados = array()) {
        if (!$this->getId()) {
            return false;
        }
        $dados["filtro_id_servico_solicitacao"] = $this->getId();
        $tb = new TbServicoSolicitacaoOcorrencia();
        $objs = $tb->listar($dados);
        if ($objs && count($objs)) {
            return $objs;
        }
        return false;
    }
}