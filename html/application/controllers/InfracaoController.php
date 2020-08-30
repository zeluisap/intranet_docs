<?php 
class InfracaoController extends Escola_Controller_Logado {

    public function init() {
		$ajaxContext = $this->_helper->getHelper("AjaxContext");
		$ajaxContext->addActionContext("listarporpagina", "json");
        $ajaxContext->initContext();
	}
    
	public function listarporpaginaAction() {
		$superior = false;
		$dados = $this->getRequest()->getPost();
		$tb = new TbInfracao();
		$registros = $tb->listar_por_pagina($dados);
		$info = $registros->getPages();
		$this->view->items = false;
		$this->view->total_pagina = $info->pageCount;
		$this->view->pagina_atual = $info->current;
		$this->view->primeira = $info->first;
		$this->view->ultima = $info->last;
		if ($registros && count($registros)) {
			$items = array();
			foreach ($registros as $registro) {
                $valor = $registro->pega_valor();
				$obj = new stdClass();
				$obj->id = $registro->getId();
                $obj->id_amparo_legal = utf8_encode($registro->id_amparo_legal);
                $obj->codigo = utf8_encode($registro->codigo);
                $obj->descricao = utf8_encode($registro->descricao);
                $obj->amparo_legal = utf8_encode("");
                $amparo_legal = $registro->findParentRow("TbAmparoLegal");
                if ($amparo_legal) {
                    $obj->amparo_legal = utf8_encode($amparo_legal->toString());
                }
                $obj->id_moeda = utf8_encode($valor->id_moeda);
                $obj->moeda = utf8_encode("");
                $moeda = $valor->findParentRow("TbMoeda");
                if ($moeda) {
                    $obj->moeda = utf8_encode($moeda->simbolo);
                }
                $obj->valor = utf8_encode(Escola_Util::number_format($valor->valor));
                $obj->tostring = utf8_encode($registro->toString());
				$items[] = $obj;
			}
			$this->view->items = $items;
		}
	}	
}