<?php
class VinculoController extends Escola_Controller_Logado {
    
	public function init() {
            $ajaxContext = $this->_helper->getHelper("AjaxContext");
            $ajaxContext->addActionContext("listarbolsista", "json");
            $ajaxContext->addActionContext("vinculoloteitemform", "json");
            $ajaxContext->addActionContext("listarbolsatipo", "json");
            $ajaxContext->initContext();
	}
	
	public function listarbolsatipoAction() {
            $this->view->bolsa_tipos = false;
            $dados = $this->getRequest()->getPost();
            $tb = new TbBolsaTipo();
            $registros = $tb->listar($dados);
            if ($registros && count($registros)) {
                $items = array();
                foreach ($registros as $registro) {
                    $pt = $registro->findParentRow("TbPrevisaoTipo");
                    $obj = new stdClass();
                    $obj->previsao_tipo = new stdClass();
                    if ($pt) {
                        $obj->previsao_tipo->id = $pt->getId();
                        $obj->previsao_tipo->chave = utf8_encode($pt->chave);
                        $obj->previsao_tipo->descricao = utf8_encode($pt->descricao);
                    }
                    $obj->id = $registro->getId();
                    $obj->chave = utf8_encode($registro->chave);
                    $obj->descricao = utf8_encode($registro->descricao);
                    $obj->to_string = utf8_encode($registro->toString());
                    $obj->valor = utf8_encode($registro->pega_valor()->toString());
                    $items[] = $obj;
                }
                $this->view->bolsa_tipos = $items;
            }
	}
	
	public function listarbolsistaAction() {
		$result = false;
        $dados = $this->getRequest()->getPost();
        $tb = new TbBolsistaStatus();
        $bs = $tb->getPorChave("A");
        if ($bs) {
            $dados["id_bolsista_status"] = $bs->getId();
        }
		$tb = new TbBolsista();
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
                $bt = $registro->findParentRow("TbBolsaTipo");
                $pf = $registro->findParentRow("TbPessoaFisica");
				$obj = new stdClass();
				$obj->id = $registro->getId();
                $obj->bolsa_tipo = utf8_encode($bt->toString());
                $obj->cpf = utf8_encode(Escola_Util::formatCpf($pf->cpf));
				$obj->nome = utf8_encode($pf->nome);
                $obj->valor = utf8_encode($bt->pega_valor()->toString());
				$items[] = $obj;
			}
			$this->view->items = $items;
		}
	}
    
	public function vinculoloteitemformAction() {
        $toform = false;
        $id_previsao_tipo = $this->_request->getPost("id_previsao_tipo");
        $id_vinculo_lote = $this->_request->getPost("id_vinculo_lote");
        if ($id_previsao_tipo && $id_vinculo_lote) {
            $pt = TbPrevisaoTipo::pegaPorId($id_previsao_tipo);
            $lote = TbVinculoLote::pegaPorId($id_vinculo_lote);
            if ($pt && $lote) {
                $tb = new TbVinculoLoteItem();
                $vli = $tb->createRow();
                $vli->tipo = $pt->chave;
                $vli->id_vinculo_lote = $lote->getId();
                $toform = utf8_encode($vli->toForm($this->view));
            }
        } 
		$this->view->toform = $toform;
	}
    
    public function filtroAction() {
        $session = Escola_Session::getInstance();
        $filtros = array("filtro_id_vinculo_tipo", "filtro_codigo", "filtro_ano", "page", "filtro_descricao", "filtro_id_vinculo_status");
        $session->atualizaFiltros($filtros);
        $this->_redirect("vinculo/index");
    }
    
	public function indexAction() {
        $session = Escola_Session::getInstance();
        if (isset($session->id_vinculo)) {
            unset($session->id_vinculo);
        }
        if (isset($session->id_info_bancaria)) {
            unset($session->id_info_bancaria);
        }
        $session->limparFiltro("id_info_bancaria");
		$tb = new TbVinculo();
		$page = $this->_getParam("page");
		$dados = $this->_request->getParams();
		$session = Escola_Session::getInstance();
		$filtros = array("filtro_id_vinculo_tipo", "filtro_codigo", "filtro_ano", "page", "filtro_descricao", "filtro_id_vinculo_status");
		$this->view->dados = $session->atualizaFiltros($filtros);
		$this->view->dados["pagina_atual"] = $page;
		$this->view->registros = $tb->listar_por_pagina($this->view->dados);
		$button = Escola_Button::getInstance();
		$button->setTitulo("VÍNCULOS");
		$button->addFromArray(array("titulo" => "Adicionar",
									"controller" => "vinculo",
									"action" => "editar",
									"img" => "icon-plus-sign",
									"params" => array("id" => 0)));
		$button->addFromArray(array("titulo" => "Pesquisar",
									"onclick" => "pesquisar()",
									"img" => "icon-search",
									"params" => array("id" => 0)));
		$button->addFromArray(array("titulo" => "Voltar",
									"controller" => "intranet",
									"action" => "index",
									"img" => "icon-reply",
									"params" => array("id" => 0)));
	}
	
	public function editarAction() {
            $tb = new TbVinculoPessoaTipo();
            $vpts = $tb->listar();
		$tb = new TbVinculoTipo();
		$vts = $tb->listar();
		if (!count($vts)) {
                    $this->_flashMessage("NENHUM TIPO DE VÍNCULO CADASTRADO!");
                    $this->_redirect($this->_request->getControllerName() . "/index");
		}
		$tb = new TbVinculoStatus();
		$vss = $tb->listar();
		if (!count($vss)) {
                    $this->_flashMessage("NENHUM STATUS DE VÍNCULO CADASTRADO!");
                    $this->_redirect($this->_request->getControllerName() . "/index");
		}
		$id = $this->_request->getParam("id");
		$tb = new TbVinculo();
		if ($id) {
                    $registro = $tb->getPorId($id);
		} else {
                    $registro = $tb->createRow();
		}
                $dados = array();
                $ibs = array();
		if ($this->_request->isPost()) {
                    $dados = $this->_request->getPost();
                    $errors = array();
                    $registro->setFromArray($dados);
                    $vinculo_errors = $registro->getErrors();
                    if (isset($dados["info_bancaria"]) && is_array($dados["info_bancaria"]) && count($dados["info_bancaria"])) {
                        $ibs = $dados["info_bancaria"];
                    } else {
                        $vinculo_errors[] = "NENHUMA INFORMAÇÃO BANCÁRIA CADASTRADA!";
                    }
                    if (!isset($dados["id_pessoa_fisica_CO"]) || !$dados["id_pessoa_fisica_CO"]) {
                        $pf_coordenador = $registro->pega_coordenador();
                        if (!$pf_coordenador) {
                            $tb = new TbVinculoPessoaTipo();
                            $vpt = $tb->getPorChave("CO");
                            if ($vpt) {
                                $vinculo_errors[] = "CAMPO {$vpt->toString()} OBRIGATÓRIO!";
                            } else {
                                $vinculo_errors[] = "CAMPO COORDENADOR OBRIGATÓRIO!";
                            }
                        }
                    }
                    if ($vinculo_errors) {
                        $errors = $vinculo_errors;
                    }
                    if (count($errors)) {
                        $this->view->actionErrors = $errors;
                    } else {
                        $registro->save();
                        if ($registro->getId()) {
                            $tb = new TbVinculoPessoaTipo();
                            $vpts = $tb->listar();
                            if ($vpts) {
                                foreach ($vpts as $vpt) {
                                    $field_name = "id_pessoa_fisica_" . $vpt->chave;
                                    if (isset($dados[$field_name]) && $dados[$field_name]) {
                                        $registro->set_vinculo_pessoa($vpt->getId(), $dados[$field_name]);
                                    }
                                }
                            }
                            if (isset($ibs) && is_array($ibs) && count($ibs)) {
                                $rs = $registro->pega_info_bancaria();
                                if ($rs) {
                                    foreach ($rs as $rs_ib) {
                                        $flag = false;
                                        foreach ($ibs as $ib) {
                                            if (isset($ib["id_info_bancaria"]) && ($rs_ib->getId() == $ib["id_info_bancaria"])) {
                                                $flag = true;
                                                break;
                                            }
                                        }
                                        if (!$flag) {
                                            $rs_ib->delete();
                                        }
                                    }
                                }
                                $tb = new TbInfoBancaria();
                                foreach ($ibs as $ib) {
                                    $ib_row = false;
                                    if (isset($ib["id_info_bancaria"]) && $ib["id_info_bancaria"]) {
                                        $ib_row = $tb->getPorId($ib["id_info_bancaria"]);
                                        unset($ib["id_info_bancaria"]);
                                    }
                                    if (!$ib_row) {
                                        $ib_row = $tb->createRow();
                                    }
                                    $ib_row->setFromArray($ib);
                                    $ib_errors = $ib_row->getErrors();
                                    if (!$ib_errors) {
                                        $ib_row->save();
                                        $registro->add_info_bancaria($ib_row);
                                    }
                                }
                            }
                            $this->_flashMessage("REGISTRO SALVO COM SUCESSO!", "Messages");
                            $this->_redirect($this->_request->getControllerName() . "/index");
                        } else {
                            $this->view->actionErrors = array("FALHA AO EXECUTAR OPERAÇÃO, DADOS INVÁLIDOS!");
                        }
                    }  
		} else {
                    $rs = $registro->pega_info_bancaria();
                    if ($rs) {
                        foreach ($rs as $obj) {
                            $obj_ib = array();
                            $obj_ib["id_info_bancaria"] = $obj->getId();
                            $obj_ib["id_info_bancaria_tipo"] = $obj->id_info_bancaria_tipo;
                            $obj_ib["info_bancaria_tipo"] = "";
                            $ibt = $obj->findParentRow("TbInfoBancariaTipo");
                            if ($ibt) {
                                $obj_ib["info_bancaria_tipo"] = $ibt->toString();
                            }
                            $obj_ib["id_banco"] = $obj->id_banco;
                            $obj_ib["banco"] = "";
                            $banco = $obj->findParentRow("TbBanco");
                            if ($banco) {
                                $obj_ib["banco"] = $banco->toString();
                            }
                            $obj_ib["agencia"] = $obj->agencia;
                            $obj_ib["agencia_dv"] = $obj->agencia_dv;
                            $obj_ib["agencia_show"] = $obj->mostrar_agencia();
                            $obj_ib["conta"] = $obj->conta;
                            $obj_ib["conta_dv"] = $obj->conta_dv;
                            $obj_ib["conta_show"] = $obj->mostrar_conta();
                            $ibs[] = $obj_ib;
                        }
                    }
                }
                $this->view->vpts = $vpts;
		$this->view->registro = $registro;
		$this->view->vts = $vts;
                $this->view->vss = $vss;
                $this->view->dados = $dados;
                $this->view->ibs = $ibs;
		$button = Escola_Button::getInstance();
		if ($this->view->registro->getId()) {
                    $button->setTitulo("CADASTRO DE VÍNCULO - ALTERAR");
		} else {
                    $button->setTitulo("CADASTRO DE VÍNCULO - INSERIR");
		}
		$button->addScript("Salvar", "salvarFormulario('formulario')", "icon-save");
		$button->addAction("Cancelar", $this->_request->getControllerName(), "index", "icon-remove-circle");
	}
	
	public function excluirAction() {
		$registro = TbVinculo::pegaPorId($this->_request->getParam("id"));
		if ($registro) {
			$errors = $registro->getDeleteErrors();
			if ($errors) {
				foreach ($errors as $erro) {
					$this->_flashMessage($erro);
				}
			} else {
				$registro->delete();
				$this->_flashMessage("OPERAÇÃO EFETUADA COM SUCESSO!", "Messages");
			}
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
		}
		$this->_redirect($this->_request->getControllerName() . "/index");
	}
	
	public function viewAction() {
            $tb = new TbVinculo();
            $registro = $tb->getPorId($this->_request->getParam("id"));
            if ($registro->getId()) {
                $tb = new TbVinculoPessoaTipo();
                $vpts = $tb->listar();
                if ($vpts) {
                    $this->view->registro = $registro;
                    $this->view->vpts = $vpts;
                    $button = Escola_Button::getInstance();
                    $button->setTitulo("VISUALIZAR VÍNCULO");
                    $button->addAction("Voltar", $this->_request->getControllerName(), "index", "icon-reply");   
                } else {
                    $this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, DADOS INVÁLIDOS!");
                    $this->_redirect($this->_request->getControllerName() . "/index");
                }
            } else {
                $this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
                $this->_redirect($this->_request->getControllerName() . "/index");
            }
	}

	public function bolsatipoAction() {
        $vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        if ($vinculo) {
            $tb = new TbBolsaTipo();
            $page = $this->_getParam("page");
            $dados = $this->_request->getParams();
            $dados["pagina_atual"] = $page;
            $this->view->registros = $tb->listar_por_pagina($dados);
            $this->view->vinculo = $vinculo;
            $button = Escola_Button::getInstance();
            $button->setTitulo("VÍNCULO > TIPOS DE DESPESA");
            $button->addFromArray(array("titulo" => "Adicionar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "editarbolsatipo",
                                        "img" => "icon-plus-sign",
                                        "params" => array("id_vinculo" => $vinculo->getId(), "id" => 0)));
            $button->addFromArray(array("titulo" => "Voltar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "index",
                                        "img" => "icon-reply",
                                        "params" => array("id" => 0)));
        } else {
			$this->_flashMessage("Falha ao Executar Operação, Dados Inválidos!");
			$this->_redirect($this->_request->getControllerName() . "/index");
        }
	}
	
    public function editarbolsatipoAction() {
        $vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        if ($vinculo) {
            $tb = new TbMoeda();
            $moedas = $tb->listar();
            if (!count($moedas)) {
                $this->_flashMessage("Nenhuma Moeda Cadastrada, Cadastre uma Moeda antes de continuar!");
                $this->_redirect($this->_request->getControllerName() . "/bolsatipo/id_vinculo/{$vinculo->getId()}/id/0");
            }
            $id = $this->_request->getParam("id");
            $tb = new TbBolsaTipo();
            if ($id) {
                $registro = $tb->getPorId($id);
            } else {
                $registro = $tb->createRow();
            }
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                $dados["id_vinculo"] = $vinculo->getId();
                $registro->setFromArray($dados);
                $errors = $registro->getErrors();
                if ($errors && count($errors)) {
                    $this->view->actionErrors = $errors;
                } else {
                    $registro->save();
                    $this->_flashMessage("REGISTRO SALVO COM SUCESSO!", "Messages");
                    $this->_redirect($this->_request->getControllerName() . "/bolsatipo/id_vinculo/{$vinculo->getId()}/id/0");
                }  
            }
            $this->view->registro = $registro;
            $this->view->vinculo = $vinculo;
            $button = Escola_Button::getInstance();
            if ($this->view->registro->getId()) {
                $button->setTitulo("CADASTRO DE TIPO DE DESPESA - ALTERAR");
            } else {
                $button->setTitulo("CADASTRO DE TIPO DE DESPESA - INSERIR");
            }
            $button->addScript("Salvar", "salvarFormulario('formulario')", "icon-save");
            $button->addFromArray(array("titulo" => "Voltar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "bolsatipo",
                                        "img" => "icon-reply",
                                        "params" => array("id_vinculo" => $vinculo->getId(), "id" => 0)));
        } else {
            $this->_flashMessage("Falha ao Executar Operação, Dados Inválidos!");
			$this->_redirect($this->_request->getControllerName() . "/index");
        }
    }
	
	public function viewbolsatipoAction() {
		$tb = new TbBolsaTipo();
		$registro = $tb->getPorId($this->_request->getParam("id"));
		if ($registro->getId()) {
            $this->view->vinculo = $registro->findParentRow("TbVinculo");
			$this->view->registro = $registro;
			$button = Escola_Button::getInstance();
			$button->setTitulo("VISUALIZAR TIPO DE DESPESA");
			$button->addFromArray(array("titulo" => "Voltar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "bolsatipo",
                                        "img" => "icon-reply",
                                        "params" => array("id_vinculo" => $this->view->vinculo->getId(), "id" => 0)));
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
			$this->_redirect($this->_request->getControllerName() . "/index");
		}
	}
	
	public function excluirbolsatipoAction() {
		$vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        $registro = TbBolsaTipo::pegaPorId($this->_request->getParam("id"));
		if ($registro) {
			$errors = $registro->getDeleteErrors();
			if ($errors) {
				foreach ($errors as $erro) {
					$this->_flashMessage($erro);
				}
			} else {
				$registro->delete();
				$this->_flashMessage("OPERAÇÃO EFETUADA COM SUCESSO!", "Messages");
			}
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
		}
		$this->_redirect($this->_request->getControllerName() . "/bolsatipo/id_vinculo/" . $vinculo->getId());
	}
    
    public function bolsistaAction() {
        $session = Escola_Session::getInstance();
        if (isset($session->id_bolsista)) {
            unset($session->id_bolsista);
        }
        $vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        if ($vinculo) {
            $this->view->bts = $vinculo->pega_bolsa_tipo();
            $bts = $vinculo->findDependentRowSet("TbBolsaTipo");
            if ($bts && count($bts)) {
                $tb = new TbBolsista();
                $page = $this->_getparam("page");
                $session = Escola_Session::getInstance();
                $filtros = array("page", "filtro_nome", "filtro_id_bolsa_tipo", "filtro_id_bolsista_status");
                $this->view->dados = $session->atualizaFiltros($filtros);
                $this->view->dados["pagina_atual"] = $page;
                $this->view->dados["id_vinculo"] = $vinculo->getId();
                $this->view->vinculo = $vinculo;
                $this->view->registros = $tb->listar_por_pagina($this->view->dados);
                $button = Escola_Button::getInstance();
                $button->setTitulo("VÍNCULO > BOLSISTAS");
                $button->addFromArray(array("titulo" => "Adicionar",
                                            "controller" => "vinculo",
                                            "action" => "editarbolsista",
                                            "img" => "icon-plus-sign",
                                            "params" => array("id_vinculo" => $vinculo->getId(), "id" => 0)));
                $button->addFromArray(array("titulo" => "Pesquisar",
                                            "onclick" => "pesquisar()",
                                            "img" => "icon-search",
                                            "params" => array("id" => 0)));
                $button->addFromArray(array("titulo" => "Voltar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "index",
                                        "img" => "icon-reply",
                                        "params" => array("id" => 0)));
            } else {
                $this->_flashMessage("Falha ao Executar Operação, Nenhum Tipo de Bolsa Cadastrado!");
                $this->_redirect($this->_request->getControllerName() . "/index");
            }
        } else {
            $this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
			$this->_redirect($this->_request->getControllerName() . "/index");
        }
    }
	
	public function editarbolsistaAction() {
        $vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        if ($vinculo) {
            $bts = $vinculo->pega_bolsa_tipo();
            if (!$bts) {
                $this->_flashMessage("Nenhum Tipo de Bolsa Cadastrado, Cadastre um tipo de bolsa para poder Cadastrar um Bolsista!");
                $this->_redirect($this->_request->getControllerName() . "/bolsista/id_vinculo/{$vinculo->getId()}/id/0");                
            }
            $id = $this->_request->getParam("id");
            $tb = new TbBolsista();
            if ($id) {
                $registro = $tb->getPorId($id);
            } else {
                $registro = $tb->createRow();
            }
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                $dados["id_vinculo"] = $vinculo->getId();
                $registro->setFromArray($dados);
                $errors = $registro->getErrors();
                if ($errors && count($errors)) {
                    $this->view->actionErrors = $errors;
                } else {
                    $registro->save();
                    $this->_flashMessage("REGISTRO SALVO COM SUCESSO!", "Messages");
                    $this->_redirect($this->_request->getControllerName() . "/bolsista/id_vinculo/{$vinculo->getId()}/id/0");
                }  
            }
            $this->view->registro = $registro;
            $this->view->vinculo = $vinculo;
            $this->view->bts = $bts;
            $this->view->ib = $registro->pega_info_bancaria();
            $button = Escola_Button::getInstance();
            if ($this->view->registro->getId()) {
                $button->setTitulo("CADASTRO DE BOLSISTA - ALTERAR");
            } else {
                $button->setTitulo("CADASTRO DE BOLSISTA - INSERIR");
            }
            $button->addScript("Salvar", "salvarFormulario('formulario')", "icon-save");
            $button->addFromArray(array("titulo" => "Voltar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "bolsista",
                                        "img" => "icon-reply",
                                        "params" => array("id_vinculo" => $vinculo->getId(), "id" => 0)));
        } else {
            $this->_flashMessage("Falha ao Executar Operação, Dados Inválidos!");
			$this->_redirect($this->_request->getControllerName() . "/index");
        }
	}

    public function viewbolsistaAction() {
		$tb = new TbBolsista();
		$registro = $tb->getPorId($this->_request->getParam("id"));
		if ($registro->getId()) {
            $pf = $registro->findParentRow("TbPessoaFisica");
            $pessoa = $pf->findParentRow("TbPessoa");
            $this->view->vinculo = $registro->findParentRow("TbVinculo");
			$this->view->registro = $registro;
            $this->view->ib = $registro->pega_info_bancaria();
            $this->view->pf = $pf;
            $this->view->pessoa = $pf->findParentRow("TbPessoa");
            $this->view->ocorrencias = $registro->pega_ocorrencia();
			$button = Escola_Button::getInstance();
			$button->setTitulo("VISUALIZAR BOLSISTA");
			$button->addFromArray(array("titulo" => "Voltar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "bolsista",
                                        "img" => "icon-reply",
                                        "params" => array("id_vinculo" => $this->view->vinculo->getId(), "id" => 0)));
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
			$this->_redirect($this->_request->getControllerName() . "/index");
		}
	}
	
	public function excluirbolsistaAction() {
		$vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        $registro = TbBolsista::pegaPorId($this->_request->getParam("id"));
		if ($registro) {
			$errors = $registro->getDeleteErrors();
			if ($errors) {
				foreach ($errors as $erro) {
					$this->_flashMessage($erro);
				}
			} else {
				$registro->delete();
				$this->_flashMessage("OPERAÇÃO EFETUADA COM SUCESSO!", "Messages");
			}
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
		}
		$this->_redirect($this->_request->getControllerName() . "/bolsista/id_vinculo/" . $vinculo->getId());
	}
	
	public function desativarAction() {
		$vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        $registro = TbBolsista::pegaPorId($this->_request->getParam("id"));
		if ($registro) {
            $registro->desativar();
			if ($registro->ativo()) {
                $this->_flashMessage("Falha ao Executar Operação, Chame o Administrador!");
			} else {
				$this->_flashMessage("OPERAÇÃO EFETUADA COM SUCESSO!", "Messages");
			}
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
		}
		$this->_redirect($this->_request->getControllerName() . "/bolsista/id_vinculo/" . $vinculo->getId());
	}
	
	public function ativarAction() {
		$vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        $registro = TbBolsista::pegaPorId($this->_request->getParam("id"));
		if ($registro) {
            $registro->ativar();
			if (!$registro->ativo()) {
                $this->_flashMessage("Falha ao Executar Operação, Chame o Administrador!");
			} else {
				$this->_flashMessage("OPERAÇÃO EFETUADA COM SUCESSO!", "Messages");
			}
		} else {
			$this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
		}
		$this->_redirect($this->_request->getControllerName() . "/bolsista/id_vinculo/" . $vinculo->getId());
	}
    
    public function previsaoAction() {
        $sessao = Escola_Session::getInstance();
        $sessao->limparFiltros(array("id_vinculo", "id_previsao_tipo", "id_bolsa_tipo", "ano"));
        $vinculo = TbVinculo::pegaPorId($this->_request->getParam("id_vinculo"));
        if ($vinculo) {
            $this->view->bts = $vinculo->pega_bolsa_tipo();
            $bts = $vinculo->findDependentRowSet("TbBolsaTipo");
            if ($bts && count($bts)) {
                $tb = new TbPrevisao();
                $page = $this->_getparam("page");
                $session = Escola_Session::getInstance();
                $filtros = array("page", "filtro_id_previsao_tipo", "filtro_id_bolsa_tipo", "filtro_ano", "filtro_mes");
                $this->view->dados = $session->atualizaFiltros($filtros);
                $this->view->dados["pagina_atual"] = $page;
                $this->view->dados["id_vinculo"] = $vinculo->getId();
                $this->view->registros = $tb->listar_por_pagina($this->view->dados);
                $this->view->vinculo = $vinculo;
                $this->view->meses = Escola_Util::pegaMeses();
                $button = Escola_Button::getInstance();
                $button->setTitulo("VÍNCULO > PREVISÃO");
                $button->addFromArray(array("titulo" => "Adicionar",
                                            "controller" => "vinculo",
                                            "action" => "addprevisao",
                                            "img" => "icon-plus-sign",
                                            "params" => array("id_vinculo" => $vinculo->getId(), "id" => 0)));
                $button->addFromArray(array("titulo" => "Pesquisar",
                                            "onclick" => "pesquisar()",
                                            "img" => "icon-search",
                                            "params" => array("id" => 0)));
                $button->addFromArray(array("titulo" => "Voltar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "index",
                                        "img" => "icon-reply",
                                        "params" => array("id" => 0)));
            } else {
                $this->_flashMessage("Falha ao Executar Operação, Nenhum Tipo de Bolsa Cadastrado!");
                $this->_redirect($this->_request->getControllerName() . "/index");
            }
        } else {
            $this->_flashMessage("NENHUMA INFORMAÇÃO RECEBIDA!");
			$this->_redirect($this->_request->getControllerName() . "/index");
        }
    }
	
    public function addprevisaoAction() {
        $sessao = Escola_Session::getInstance();
        $filtros = array("id_vinculo", "id_previsao_tipo", "id_bolsa_tipo", "ano");
        $dados = $sessao->atualizaFiltros($filtros);
        $vinculo = TbVinculo::pegaPorId($dados["id_vinculo"]);
        if ($vinculo) {
            $tb = new TbPrevisaoTipo();
            $pts = $tb->listar();
            if ($pts) {
                $this->view->pts = $pts;
                $this->view->bts = $vinculo->pega_bolsa_tipo();
                $this->view->vinculo = $vinculo;
                $this->view->id_previsao_tipo = $dados["id_previsao_tipo"];
                $this->view->id_bolsa_tipo = $dados["id_bolsa_tipo"];
                $this->view->ano = $dados["ano"];
                if (!$this->view->ano) {
                    $this->view->ano = date("Y");
                }
                $button = Escola_Button::getInstance();
                $button->setTitulo("VÍNCULO > PREVISÃO");
                $button->addScript("Continuar", "salvarFormulario('formulario')", "icon-hand-right");
                $button->addFromArray(array("titulo" => "Voltar",
                                        "controller" => $this->_request->getControllerName(),
                                        "action" => "previsao",
                                        "img" => "icon-reply",
                                        "params" => array("id_vinculo" => $vinculo->getId(), "id" => 0)));
            } else {
                $this->_flashMessage("Falha ao Executar Operação, Dados Inválidos!");
                $this->_redirect($this->_request->getControllerNam