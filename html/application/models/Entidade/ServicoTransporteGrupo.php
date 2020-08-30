<?php

class ServicoTransporteGrupo extends Escola_Entidade {

    protected $_valor = false;

    public function getServico() {
        return $this->findParentRow("TbServico");
    }

    public function pega_valor() {
        if ($this->_valor) {
            return $this->_valor;
        }
        $valor = $this->findParentRow("TbValor");
        if (!$valor) {
            $tb = new TbValor();
            $valor = $tb->createRow();
            $this->vencimento_dias = 10;
        }
        return $valor;
    }

    public function init() {
        parent::init();
        $this->_valor = $this->pega_valor();
        if (!$this->getId()) {
            $this->obrigatorio = "N";
            $this->validade_dias = 0;
            $this->juros_dia = 0;
        }
    }

    public function setFromArray(array $dados) {
        if (isset($dados["juros_dia"])) {
            $dados["juros_dia"] = Escola_Util::montaNumero($dados["juros_dia"]);
        }
        $this->_valor->setFromArray($dados);
        parent::setFromArray($dados);
    }

    public function save() {
        $this->id_valor = $this->_valor->save();
        $periodicidade = $this->findParentRow("TbPeriodicidade");
        if (!$periodicidade || !$periodicidade->anual()) {
            $this->mes_referencia = null;
        }
        return parent::save();
    }

    public function getErrors() {
        $msgs = array();
        if (!trim($this->id_servico)) {
            $msgs[] = "CAMPO SERVIï¿½O OBRIGATï¿½RIO!";
        }
        $servico = $this->findParentRow("TbServico");
        if ($servico && $servico->transporte() && !trim($this->id_transporte_grupo)) {
            $msgs[] = "CAMPO GRUPO DE TRANSPORTE OBRIGATï¿½RIO!";
        }
        if (!$this->_valor->valor) {
            $msgs[] = "CAMPO VALOR OBRIGATï¿½RIO!";
        }
        $periodicidade = $this->findParentRow("TbPeriodicidade");
        if ($periodicidade && $periodicidade->anual() && !$this->mes_referencia) {
            $msgs[] = "CAMPO Mï¿½S REFERï¿½NCIA OBRIGATï¿½RIO PARA PERIODICIDADE ANUAL!";
        }
        if (!trim($this->vencimento_dias)) {
            $msgs[] = "CAMPO DIAS PARA O VENCIMENTO OBRIGATï¿½RIO!";
        }
        $rg = $this->getTable()->fetchAll(" id_servico = '{$this->id_servico}' and id_transporte_grupo = '{$this->id_transporte_grupo}' and id_servico_transporte_grupo <> '" . $this->getId() . "' ");
        if ($rg && count($rg)) {
            $msgs[] = "Vï¿½NCULO DE SERVIï¿½O E GRUPOS DE TRANSPORTE Jï¿½ CADASTRADO!";
        }
        if (count($msgs)) {
            return $msgs;
        }
        return false;
    }

    public function getDeleteErrors() {
        $msgs = array();
        $registros = $this->findDependentRowset("TbServicoSolicitacao");
        if ($registros && count($registros)) {
            $msgs[] = "Existem Registros Vinculados a este! Apague as referencias antes de excluir!";
        }
        if (count($msgs)) {
            return $msgs;
        }
        return false;
    }

    public function obrigatorio() {
        return ($this->obrigatorio == "S");
    }

    public function mostrar_obrigatorio() {
        return ($this->obrigatorio()) ? "SIM" : "Nï¿½O";
    }

    public function toString() {
        $txt = array();
        $servico = $this->findParentRow("TbServico");
        if ($servico) {
            $txt[] = $servico->toString();
        }
        $txt[] = $this->pega_valor()->toString();
        return implode(" - ", $txt);
    }

    public function pegaRelatorioSolicitacao() {
        $servico = $this->findParentRow("TbServico");
        $tg = $this->findParentRow("TbTransporteGrupo");

        if (!$servico) {
            return null;
        }

        $relatorios = array();
        if (!$tg) {
            return null;
        }

        $tg_chave = $tg->chave;
        if ($tg_chave == "CARGAPERIGOSA") {
            $tg_chave = "CARGA";
        }

        if ($servico->isCarteiraPermissionario()) {
            $relatorios[] = "Escola_Relatorio_Servico_{$servico->codigo}_PR_{$tg_chave}";
        }
        $relatorios[] = "Escola_Relatorio_Servico_{$servico->codigo}_{$tg_chave}";
        $relatorios[] = "Escola_Relatorio_Servico_{$servico->codigo}";

        foreach ($relatorios as $relatorio_nome) {
            if (Zend_Loader_Autoloader::autoload($relatorio_nome)) {
                $relatorio = new $relatorio_nome();
                return $relatorio;
            }
        }

        return null;
    }

    public function validarEmitir($ss) {
        $relatorio = $this->pegaRelatorioSolicitacao();
        if (!$relatorio) {
            return array("NENHUM RELATÓRIO DISPONÍVEL!");
        }

        $relatorio->set_registro($ss);
        return $relatorio->validarEmitir();
    }

    public function toPDF($ss) {
        if (!$ss) {
            throw new Exception("Falha ao gerar relatório, Nenhum Serviço Vinculado!");
        }

        $relatorio = $this->pegaRelatorioSolicitacao($ss);
        if (!$relatorio) {
            return false;
        }
        $relatorio->set_registro($ss);
        return $relatorio->toPDF();
    }
}