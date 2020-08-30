<?php
class RelatorioController extends Escola_Controller_Logado {
	
	public function admAction() {
		$this->view->relatorio = false;
		$this->view->method = false;
		$session = Escola_Session::getInstance();
		$dados = $session->atualizaFiltros(array("id_relatorio", "tipo"));
		$this->view->dados = $dados;
		if ($this->_request->isPost()) {
                    $dados = $this->_request->getPost();
                    try {
                        if (!isset($dados["operacao"]) || ($dados["operacao"] != "imprimir")) {
                            throw new Exception("Falha ao Gerar Relatório, Dados Inválidos!");
                        }
                        if (!isset($dados["id_relatorio"]) || !$dados["id_relatorio"]) {
                            throw new Exception("Falha ao Gerar Relatório, Nenhum Relatório Selecionado!");
                        } 

                        $relatorio = TbRelatorio::getInstance($dados["id_relatorio"]);
                        var_dump($relatorio); die();
                        if ($relatorio) {
                            throw new Exception("Falha ao Gerar Relatório, Nenhum Relatório Selecionado!");
                        }

                        $this->view->relatorio = $relatorio;
                        $method = "to" . $dados["tipo"];
                        if (!method_exists($relatorio, $method)) {
                            throw new Exception("Falha ao Gerar Relatório, Formato Inválido!");
                        } 

                        $this->view->method = $method;

                        if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                            $relatorio->$method();
                        }
                    } catch (Exception $ex) {
                        $this->view->actionErrors[] = $ex->getMessage();
                    }
		}
		$tb = new TbRelatorioTipo();
		$rt = $tb->getPorChave("Adm");
		if ($rt) {
			$tb = new TbRelatorio();
			$relatorios = $tb->listar(array("filtro_id_relatorio_tipo" => $rt->getId()));
			if ($relatorios && count($relatorios)) {
				$this->view->relatorios = $relatorios;
				$button = Escola_Button::getInstance();
				$button->setTitulo("RELATÓRIOS");
				$button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
				$button->addFromArray(array("titulo" => "Voltar",
																"controller" => "intranet",
																"action" => "index",
																"img" => "icon-reply",
																"params" => array("id" => 0)));
			} else {
				$this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, NENHUM RELATÓRIO DISPONÍVEL!");
				$this->_redirect("index");
			}
		} else {
			$this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, DADOS INCONSISTENTES!");
			$this->_redirect("index");
		}
	}
    
	public function caraterAction() {
            $this->view->relatorio = false;
            $this->view->method = false;
            
            $session = Escola_Session::getInstance();
            $dados = $session->atualizaFiltros(array("id_transporte_grupo", "tipo", "agrupado"));
            if (!isset($dados["agrupado"]) || !$dados["agrupado"]) {
                $dados["agrupado"] = "S";
            }
            $this->view->dados = $dados;
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                if (isset($dados["operacao"]) && ($dados["operacao"] == "imprimir")) {
                    $agrupado = ($dados["agrupado"] == "S");
                    if ($agrupado) {
                        $relatorio_nome = "CaraterGrupo";
                    } else {
                        $relatorio_nome = "Carater";
                    }
                    $tb = new TbRelatorio();
                    $relatorio = $tb->getPorChave($relatorio_nome);
                    if ($relatorio) {
                        $this->view->relatorio = $relatorio;

                        $rel = TbRelatorio::getInstance($relatorio->getId());
                        if ($rel) {
                            $rel->set_dados($dados);
                            $errors = $rel->validarEmitir();
                            if (!$errors) {
                                $this->view->rel = $rel;
                                $method = "to" . $dados["tipo"];
                                if (!method_exists($rel, $method)) {
                                    $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO, FORMATO INVÁLIDO!";
                                } else {
                                    if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                                        $rel->$method();
                                    } else {
                                        $this->view->method = $method;
                                    }
                                }
                            } else {
                                $this->view->actionErrors = $errors;
                            }
                            $this->view->errors = $errors;
                        } else {
                            $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO!";
                        }
                    } else {
                        $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO!";
                    }
                }
            }
            $button = Escola_Button::getInstance();
            $button->setTitulo("RELATÓRIOS");
            $button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
            $button->addFromArray(array("titulo" => "Voltar",
                                                    "controller" => "intranet",
                                                    "action" => "index",
                                                    "img" => "icon-reply",
                                                    "params" => array("id" => 0)));
	}
    
	public function placasretidasAction() {
		$this->view->relatorio = false;
		$this->view->method = false;
        $tb = new TbRelatorio();
        $relatorio = $tb->getPorChave("Placas");
        if ($relatorio) {
            $this->view->relatorio = $relatorio;
            $session = Escola_Session::getInstance();
            $dados = $session->atualizaFiltros(array("id_transporte_grupo", "tipo"));
            $this->view->dados = $dados;
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                if (isset($dados["operacao"]) && ($dados["operacao"] == "imprimir")) {
                    $rel = TbRelatorio::getInstance($relatorio->getId());
                    if ($rel) {
                        $rel->set_dados($dados);
                        $errors = $rel->validarEmitir();
                        if (!$errors) {
                            $this->view->rel = $rel;
                            $method = "to" . $dados["tipo"];
                            if (!method_exists($rel, $method)) {
                                $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO, FORMATO INVÁLIDO!";
                            } else {
                                if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                                    $rel->$method();
                                } else {
                                    $this->view->method = $method;
                                }
                            }
                        } else {
                            $this->view->actionErrors = $errors;
                        }
                        $this->view->errors = $errors;
                    } else {
                        $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO!";
                    }
                }
            }
            $button = Escola_Button::getInstance();
            $button->setTitulo("RELATÓRIOS");
            $button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
            $button->addFromArray(array("titulo" => "Voltar",
                                                    "controller" => "intranet",
                                                    "action" => "index",
                                                    "img" => "icon-reply",
                                                    "params" => array("id" => 0)));
        } else {
            $this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, DADOS INCONSISTENTES!");
            $this->_redirect("intranet/index");
        }
	}
    
	public function agenteAction() {
		$this->view->relatorio = false;
		$this->view->method = false;
        $tb = new TbRelatorio();
        $relatorio = $tb->getPorChave("Agente");
        if ($relatorio) {
            $this->view->relatorio = $relatorio;
            $session = Escola_Session::getInstance();
            $dados = $session->atualizaFiltros(array("tipo"));
            $this->view->dados = $dados;
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                if (isset($dados["operacao"]) && ($dados["operacao"] == "imprimir")) {
                    $rel = TbRelatorio::getInstance($relatorio->getId());
                    if ($rel) {
                        $rel->set_dados($dados);
                        $errors = $rel->validarEmitir();
                        if (!$errors) {
                            $this->view->rel = $rel;
                            $method = "to" . $dados["tipo"];
                            if (!method_exists($rel, $method)) {
                                $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO, FORMATO INVÁLIDO!";
                            } else {
                                if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                                    $rel->$method();
                                } else {
                                    $this->view->method = $method;
                                }
                            }
                        } else {
                            $this->view->actionErrors = $errors;
                        }
                        $this->view->errors = $errors;
                    } else {
                        $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO!";
                    }
                }
            }
            $button = Escola_Button::getInstance();
            $button->setTitulo("RELATÓRIOS");
            $button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
            $button->addFromArray(array("titulo" => "Voltar",
                                                    "controller" => "intranet",
                                                    "action" => "index",
                                                    "img" => "icon-reply",
                                                    "params" => array("id" => 0)));
        } else {
            $this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, DADOS INCONSISTENTES!");
            $this->_redirect("intranet/index");
        }
	}
    
	public function motoristaAction() {
            try {
                $this->view->relatorio = false;
                $this->view->method = false;
                $tb = new TbRelatorio();
                $relatorio = $tb->getPorChave("Motorista");
                if (!$relatorio) {
                    throw new Exception("FALHA AO EXECUTAR OPERAÇÃO, DADOS INCONSISTENTES!");
                }
                
                $this->view->relatorio = $relatorio;
                $session = Escola_Session::getInstance();
                $dados = $session->atualizaFiltros(array("id_transporte_grupo", "tipo", "ordem"));
                if (!$dados["ordem"]) {
                    $dados["ordem"] = "nome";
                }
                $this->view->dados = $dados;
                if ($this->_request->isPost()) {
                    try {
                        $dados = $this->_request->getPost();
                        if (!isset($dados["operacao"]) || ($dados["operacao"] != "imprimir")) {
                            throw new Exception("Falha ao Gerar Relatório, Dados Inválidos!");
                        }
                        
                        $rel = TbRelatorio::getInstance($relatorio->getId());
                        if (!$rel) {
                            throw new Exception("Falha ao Gerar Relatório, Nenhum Relatório Disponível!");
                        }
                        
                        $rel->set_dados($dados);
                        $errors = $rel->validarEmitir();
                        $this->view->errors = $errors;
                        if ($errors) {
                            throw new Exception("<ul><li>" . implode("</li><li>", $errors) . "</li></ul>");
                        }
                        
                        $this->view->rel = $rel;
                        $method = "to" . $dados["tipo"];
                        if (!method_exists($rel, $method)) {
                            throw new Exception("FALHA AO GERAR RELATÓRIO, FORMATO INVÁLIDO!");
                        }

                        $this->view->method = $method;
                        if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                            $rel->$method();
                        }
                        
                    } catch (Exception $ex) {
                        $this->view->actionErrors[] = $ex->getMessage();
                    }
                }
                $button = Escola_Button::getInstance();
                $button->setTitulo("RELATÓRIOS");
                $button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
                $button->addFromArray(array("titulo" => "Voltar",
                                                        "controller" => "intranet",
                                                        "action" => "index",
                                                        "img" => "icon-reply",
                                                        "params" => array("id" => 0)));
            } catch (Exception $ex) {
                $this->_flashMessage($ex->getMessage());
                $this->_redirect("intranet/index");
            }
	}
        
    public function taxasAction(){
        $this->view->relatorio = false;
        $this->view->method = false;
        $tb = new TbRelatorio();
        $relatorio = $tb->getPorChave("Taxas");
        if ($relatorio) {
            $this->view->relatorio = $relatorio;
            $session = Escola_Session::getInstance();
            $dados = $session->atualizaFiltros(array("id_transporte_grupo", "data_inicio", "data_fim", "tipo", "nome_proprietario"));
            $this->view->dados = $dados;
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                if (isset($dados["operacao"]) && ($dados["operacao"] == "imprimir")) {
                    $rel = TbRelatorio::getInstance($relatorio->getId());
                    if ($rel) {
                        $rel->set_dados($dados);
                        $errors = $rel->validarEmitir();
                        if (!$errors) {
                            $this->view->rel = $rel;
                            $method = "to" . $dados["tipo"];
                            if (!method_exists($rel, $method)) {
                                $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO, FORMATO INVÁLIDO!";
                            } else {
                                if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                                    $rel->$method();
                                } else {
                                    $this->view->method = $method;
                                }
                            }
                        } else {
                            $this->view->actionErrors = $errors;
                        }
                        $this->view->errors = $errors;
                    } else {
                        $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO!";
                    }
                }
            }
            $button = Escola_Button::getInstance();
            $button->setTitulo("RELATÓRIOS");
            $button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
            $button->addFromArray(array("titulo" => "Voltar",
                                                    "controller" => "intranet",
                                                    "action" => "index",
                                                    "img" => "icon-reply",
                                                    "params" => array("id" => 0)));
        } else {
            $this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, DADOS INCONSISTENTES!");
            $this->_redirect("intranet/index");
        }
    }
        
    public function taxassacadoAction(){
        $this->view->relatorio = false;
        $this->view->method = false;
        $tb = new TbRelatorio();
        $relatorio = $tb->getPorChave("Taxassacado");
        if ($relatorio) {
            $this->view->relatorio = $relatorio;
            $session = Escola_Session::getInstance();
            $dados = $session->atualizaFiltros(array("id_transporte_grupo", "data_inicio", "data_fim", "tipo", "nome_proprietario"));
            $this->view->dados = $dados;
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                if (isset($dados["operacao"]) && ($dados["operacao"] == "imprimir")) {
                    $rel = TbRelatorio::getInstance($relatorio->getId());
                    if ($rel) {
                        $rel->set_dados($dados);
                        $errors = $rel->validarEmitir();
                        if (!$errors) {
                            $this->view->rel = $rel;
                            $method = "to" . $dados["tipo"];
                            if (!method_exists($rel, $method)) {
                                $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO, FORMATO INVÁLIDO!";
                            } else {
                                if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                                    $rel->$method();
                                } else {
                                    $this->view->method = $method;
                                }
                            }
                        } else {
                            $this->view->actionErrors = $errors;
                        }
                        $this->view->errors = $errors;
                    } else {
                        $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO!";
                    }
                }
            }
            $button = Escola_Button::getInstance();
            $button->setTitulo("RELATÓRIOS");
            $button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
            $button->addFromArray(array("titulo" => "Voltar",
                                                    "controller" => "intranet",
                                                    "action" => "index",
                                                    "img" => "icon-reply",
                                                    "params" => array("id" => 0)));
        } else {
            $this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, DADOS INCONSISTENTES!");
            $this->_redirect("intranet/index");
        }    
    }
    
    public function taxasapagarAction(){
        $this->view->relatorio = false;
        $this->view->method = false;
        $tb = new TbRelatorio();
        $relatorio = $tb->getPorChave("Taxasapagar");
        if ($relatorio) {
            $this->view->relatorio = $relatorio;
            $session = Escola_Session::getInstance();
            $dados = $session->atualizaFiltros(array("id_transporte_grupo", "data_inicio", "data_fim", "tipo"));
            $this->view->dados = $dados;
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                if (isset($dados["operacao"]) && ($dados["operacao"] == "imprimir")) {
                    $rel = TbRelatorio::getInstance($relatorio->getId());
                    if ($rel) {
                        $rel->set_dados($dados);
                        $errors = $rel->validarEmitir();
                        if (!$errors) {
                            $this->view->rel = $rel;
                            $method = "to" . $dados["tipo"];
                            if (!method_exists($rel, $method)) {
                                $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO, FORMATO INVÁLIDO!";
                            } else {
                                if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                                    $rel->$method();
                                } else {
                                    $this->view->method = $method;
                                }
                            }
                        } else {
                            $this->view->actionErrors = $errors;
                        }
                        $this->view->errors = $errors;
                    } else {
                        $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO!";
                    }
                }
            }
            $button = Escola_Button::getInstance();
            $button->setTitulo("RELATÓRIOS");
            $button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
            $button->addFromArray(array("titulo" => "Voltar",
                                                    "controller" => "intranet",
                                                    "action" => "index",
                                                    "img" => "icon-reply",
                                                    "params" => array("id" => 0)));
        } else {
            $this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, DADOS INCONSISTENTES!");
            $this->_redirect("intranet/index");
        }    
    }
    
    public function veiculosAction(){
        $this->view->relatorio = false;
        $this->view->method = false;
        $tb = new TbRelatorio();
        $relatorio = $tb->getPorChave("veiculos");
        if ($relatorio) {
            $this->view->relatorio = $relatorio;
            $session = Escola_Session::getInstance();
            $dados = $session->atualizaFiltros(array("id_transporte_grupo", "id_transporte_veiculo_status", "id_servico_solicitacao_status", "tipo"));
            $this->view->dados = $dados;
            if ($this->_request->isPost()) {
                $dados = $this->_request->getPost();
                if (isset($dados["operacao"]) && ($dados["operacao"] == "imprimir")) {
                    $rel = TbRelatorio::getInstance($relatorio->getId());
                    if ($rel) {
                        $rel->set_dados($dados);
                        $errors = $rel->validarEmitir();
                        if (!$errors) {
                            $this->view->rel = $rel;
                            $method = "to" . $dados["tipo"];
                            if (!method_exists($rel, $method)) {
                                $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO, FORMATO INVÁLIDO!";
                            } else {
                                if (($dados["tipo"] == "XLS") || ($dados["tipo"] == "PDF")) {
                                    $rel->$method();
                                } else {
                                    $this->view->method = $method;
                                }
                            }
                        } else {
                            $this->view->actionErrors = $errors;
                        }
                        $this->view->errors = $errors;
                    } else {
                        $this->view->actionErrors[] = "FALHA AO GERAR RELATÓRIO!";
                    }
                }
            }
            $button = Escola_Button::getInstance();
            $button->setTitulo("RELATÓRIOS");
            $button->addScript("Imprimir", "salvarFormulario('formulario')", "icon-print");
            $button->addFromArray(array("titulo" => "Voltar",
                                                    "controller" => "intranet",
                                                    "action" => "index",
                                                    "img" => "icon-reply",
                                                    "params" => array("id" => 0)));
        } else {
            $this->_flashMessage("FALHA AO EXECUTAR OPERAÇÃO, DADOS INCONSISTENTES!");
            $this->_redirect("intranet/index");
        }    
    }
}
