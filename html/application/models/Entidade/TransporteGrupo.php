<?php

class TransporteGrupo extends Escola_Entidade {

    public function init() {
        if (!$this->getId()) {
            $this->possui_concessao = "S";
        }
    }

    public function toString() {
        return $this->descricao;
    }

    public function setFromArray(array $dados) {
        if (isset($dados["chave"])) {
            $dados["chave"] = Escola_Util::maiuscula($dados["chave"]);
        }
        parent::setFromArray($dados);
    }

    public function getErrors() {
        $msgs = array();
        if (!trim($this->chave)) {
            $msgs[] = "CAMPO CHAVE OBRIGATÓRIO!";
        }
        if (!trim($this->descricao)) {
            $msgs[] = "CAMPO DESCRIÇÃO OBRIGATÓRIO!";
        }
        if (!trim($this->possui_concessao)) {
            $msgs[] = "CAMPO POSSUI CONCESSÃO OBRIGATÓRIO!";
        }
        $rg = $this->getTable()->fetchAll(" chave = '{$this->chave}' and id_transporte_grupo <> '" . $this->getId() . "' ");
        if ($rg && count($rg)) {
            $msgs[] = "GRUPO DE TRANSPORTE JÁ CADASTRADO!";
        }
        if (count($msgs)) {
            return $msgs;
        }
        return false;
    }

    public function getDeleteErrors() {
        $msgs = array();
        $registros = $this->findDependentRowset("TbTransporte");
        if ($registros && count($registros)) {
            $msgs[] = "Existem Registros Vinculados a este! Apague as referencias antes de excluir!";
        } else {
            $registros = $this->findDependentRowset("TbServicoTransporteGrupo");
            if ($registros && count($registros)) {
                $msgs[] = "Existem Registros Vinculados a este! Apague as referencias antes de excluir!";
            }
        }
        if (count($msgs)) {
            return $msgs;
        }
        return false;
    }

    public function taxi() {
        return ($this->chave == "TAXI");
    }

    public function onibus() {
        return ($this->chave == "OB");
    }
    
    public function moto_taxi() {
        return in_array($this->chave, array("MT", "TMTX", "LMT"));
    }

    public function pegaServicosObrigatorios() {
        $tb = new TbServicoTransporteGrupo();
        $objs = $tb->listar(array("id_transporte_grupo" => $this->getid(),
            "obrigatorio" => "S"));
        if ($objs && count($objs)) {
            return $objs;
        }
        return false;
    }

    public function possui_concessao() {
        return ($this->possui_concessao == "S");
    }

    public function mostrar_possui_concessao() {
        if ($this->possui_concessao()) {
            return "SIM";
        }
        return "NÃO";
    }

    public function isVeiculoUnico() {
        return ($this->taxi() || $this->moto_taxi());
    }

}
