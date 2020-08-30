<?php
class TbVinculoLoteOcorrenciaTipo extends Escola_Tabela {
	protected $_name = "vinculo_lote_ocorrencia_tipo";
	protected $_rowClass = "VinculoLoteOcorrenciaTipo";
	protected $_dependentTables = array("TbVinculoLoteOcorrencia");						 
	
    public function getSql($dados = array()) {
        $sql = $this->select();
        $sql->order("descricao");
        return $sql;
    }

    public function recuperar() {
		$items = $this->listar();
		if (!$items) {
			$dados = array("LB" => utf8_encode("LIBERAÇÃO"),
                           "AP" => utf8_encode("APROVAÇÃO"),
                           "NF" => utf8_encode("GERAÇÃO NOTA FISCAL"),
                           "RC" => utf8_encode("RECEBIMENTO DE RECURSO"),
                           "PG" => utf8_encode("CONFIRMAÇÃO DE PAGAMENTO"));
			foreach ($dados as $chave => $descricao) {
				$item = $this->createRow();
				$item->setFromArray(array("chave" => $chave, "descricao" => utf8_decode($descricao)));
				$item->save();
			}
		}
	}
	
	public function getPorDescricao($descricao) {
		$uss = $this->fetchAll(" descricao = '{$descricao}' ");
		if ($uss && count($uss)) {
			return $uss->current();
		}
		return false;
	}
    
    public function getPorChave($chave) {
		$uss = $this->fetchAll(" chave = '{$chave}' ");
		if ($uss && count($uss)) {
			return $uss->current();
		}
		return false;
	}
}