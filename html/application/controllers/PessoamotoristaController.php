<?php
class PessoamotoristaController extends Escola_Controller_Logado {
	
	public function init() {
		$ajaxContext = $this->_helper->getHelper("AjaxContext");
        $ajaxContext->addActionContext("listarporpagina", "json");
		$ajaxContext->initContext();
	}
        
	public function listarporpaginaAction() {
		$dados = $this->getRequest()->getPost();
		$tb = new TbPessoaMotorista();
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
                $pf = $registro->findParentRow("TbPessoaFisica");
                $cnh_categoria = $registro->findParentRow("TbCnhCategoria");
				$obj = new stdClass();
				$obj->id = $registro->getId();
				$obj->cpf = utf8_encode(Escola_Util::formatCpf($pf->cpf));
				$obj->nome = utf8_encode($pf->nome);
                $obj->cnh_numero = utf8_encode($registro->cnh_numero);
                $obj->cnh_categoria = utf8_encode($cnh_categoria->toString());
                $obj->cnh_validade = utf8_encode(Escola_Util::formatData($registro->cnh_validade));
				$items[] = $obj;
			}
			$this->view->items = $items;
		}
	}    
}