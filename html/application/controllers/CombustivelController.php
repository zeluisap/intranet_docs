<?php 
class CombustivelController extends Escola_Controller_Logado {
	
	public function init() {
		$ajaxContext = $this->_helper->getHelper("AjaxContext");
		$ajaxContext->addActionContext("listar", "json");
		$ajaxContext->addActionContext("salvar", "json");
		$ajaxContext->initContext();
	}	
	
	public function listarAction() {
		$result = false;
		$tb = new TbCombustivel();
		$registros = $tb->listar($this->getRequest()->getPost());
		if ($registros && $registros->count()) {
			$result = array();
			foreach ($registros as $registro) {
				$obj = new stdClass();
				$obj->id = $registro->id_combustivel;
				$obj->descricao = utf8_encode($registro->descricao);
				$result[] = $obj;
			}
		}
		$this->view->result = $result;
	}
	
	public function salvarAction() {
		$result = new stdClass;
        $result->mensagem = false;
        $result->id = 0;
        $tb = new TbCombustivel();
        $row = $tb->createRow();
        $dados = $this->getRequest()->getPost();
		$dados = array_map("utf8_decode", $dados);
        $row->setFromArray($dados);
        $errors = $row->getErrors();
        if ($errors) {
            $result->mensagem = utf8_encode(implode("<br>", $errors));
        } else {
            $id = $row->save();
            if ($id) {
                $result->id = $id;
            }
        }
		$this->view->result = $result;
	}	

	public function indexAction() {
		$tb = new TbCombustivel();
		$page = $this->_getParam("page");
		$this->view->registros = $tb->listar_por_pagina(array("pagina_atual" => $page));
		$button = Escola_Button::getInstance();
		$button->setTitulo("CADASTRO DE COMBUSTÍVEIS");
		$button->addFromArray(array("titulo" => "Adicionar",
									"controller" => $this->_request->getControllerName(),
									"action" => "editar",
									"img" => "icon-plus-sign",
									"params" => array("id" => 0)));
		$button->addFromArray(array("titulo" => "Voltar",
									"controller" => "intranet",
									"action" => "index",
									"img" => "icon-reply",
									"params" => array("id" => 0)));
	}
	
	public function editarAction() {
		$id = $this->_request->getParam("id");
		$tb = new TbCombustivel();
		if ($id) {
			$registro = $tb->getPorId($id);
		} else {
			$registro = $tb->createRow();
		}
		if ($this->_request->isPost()) {
			$dados = $this->_request->getPost();
			$registro->setFromArray($dados);
			$errors = $registro->getErrors();
			if ($errors) {
				$this->view->actionErrors = $errors;
			} else {
				$this->_flashMessage("REGISTRO SALVO COM SUCESSO!", "Messages");
				$registro->save();
				$this->_redirect($this->_request->getControllerName() . "/index");
			}  
		}
		$this->view->registro = $registro;
		$button = Escola_Button::getInstance();
		if ($this->view->registro->getId()) {
			$button->setTitulo("CADASTRO DE COMBUSTÍVEL - ALTERAR");
		} else {
			$button->setTitulo("CADASTRO DE COMBUSTÍVEL - INSERIR");
		}
		$button->addScript("Salvar", "salvarFormulario('formulario')", "icon-save");
		$button->addAction("Cancelar", $this->_request->getControllerName(), "index", "icon-remove-circle");
	}
	
	public function excluirAction() {
		$id = $this->_request->getParam("id");
		if ($id) {
			$tb = new TbCombustivel();
			$registro = $tb->getPorId($id);
			if ($registro) {
                $errors = $registro->getDeleteErrors();
                if (!$errors) {
                    $registro->delete();
                    $this->_flashMessage("OPERAÇÃO EFETUADA COM SUCESSO!", "Messages");					
                } else {
                    foreach ($errors as $erro) {
                        $this->_flashMessage($erro);
                    }
                }
			} else {
				$this->_flashMessage("INFORMAÇÃO RECEBIDA INVÁLIDA!");
			}
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
		}
		$this->_redirect($this->_request->getControllerName() . "/index");
	}
	
	public function viewAction() {
		$id = $this->_request->getParam("id");
		if ($id) {
			$tb = new TbCombustivel();
			$registro = $tb->getPorId($id);
			if ($registro) {
				$this->view->registro = $registro;
				$button = Escola_Button::getInstance();
				$button->setTitulo("VISUALIZAR COMBUSTÍVEL");
				$button->addAction("Voltar", $this->_request->getControllerName(), "index", "icon-reply");
			} else {
				$this->_flashMessage("INFORMAÇÃO RECEBIDA INVÁLIDA!");
				$this->_redirect($this->_request->getControllerName() . "/index");
			}
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
			$this->_redirect($this->_request->getControllerName() . "/index");
		}
	}
}