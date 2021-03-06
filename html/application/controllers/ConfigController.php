<?php

class ConfigController extends Escola_Controller_Logado {

    public function indexAction() {
        $tb = new TbSistema();
        $registro = $tb->pegaSistema();
        $pf = false;

        if ($registro) {
            $pf = $registro->findParentRow("TbPessoaJuridica");
        }

        if ($this->_request->isPost()) {
            $db = Zend_Registry::get("db");
            $db->beginTransaction();

            try {
                $dados = $this->_request->getPost();
                $tmp_arquivo = Escola_Util::getUploadedFile("cliente_arquivo");
                $tb = new TbArquivoTipo();
                $at = $tb->getPorMimeType($tmp_arquivo["type"]);

                if (!(!$tmp_arquivo || ($at && $at->eImagem()))) {
                    throw new Exception("FALHA AO EXECUTAR OPERAÇÃO, SOMENTE ARQUIVO DE IMAGEM.");
                }

                $registro->setFromArray($dados["sistema"]);
                $errors = $registro->getErrors();
                if ($errors) {
                    $ex = new Escola_Exception_IntranetException("Falha");
                    $ex->setErrors($errors);
                    throw $ex;
                }

                $registro->save();
                $dados["cliente"]["nome_fantasia"] = $dados["cliente"]["razao_social"];
                $pf->setFromArray($dados["cliente"]);
                $errors = $pf->getErrors();
                if ($errors) {
                    $ex = new Escola_Exception_IntranetException("Falha");
                    $ex->setErrors($errors);
                    throw $ex;
                }

                $pf->save();
                $pessoa = $pf->findParentRow("TbPessoa");

                if ($tmp_arquivo) {

                    $arquivo = $pessoa->getFoto();
                    if (!$arquivo) {
                        $tb = new TbArquivo();
                        $arquivo = $tb->createRow();
                    }

                    $arquivo->setFromArray(array("legenda" => "Logomarca", "arquivo" => $tmp_arquivo));
                    $id = $arquivo->save();
                    if ($id) {
                        $pessoa->addFoto($arquivo);
                    }

                }

                $smtp = TbSmtp::getSmtp();
                $smtp->setFromArray($dados["smtp"]);
                $errors = $smtp->getErrors();

                // if ($errors) {
                //     $ex = new Escola_Exception_IntranetException("Falha");
                //     $ex->setErrors($errors);
                //     throw $ex;
                // }

                $smtp->save();

                $db->commit();
                $this->view->actionMessages[] = "OPERAÇÃO EFETUADA COM SUCESSO!";

            } catch (Escola_Exception_IntranetException $e) {
                var_dump($ex); die();
                $this->view->actionErrors = $e->getErrors();
                $db->rollBack();

            } catch (Exception $e) {
                $this->view->actionErrors[] = $e->getMessage();
                $db->rollBack();
            }
        }

        $this->view->registro = $registro;
        $this->view->pf = $pf;
        $this->view->smtp = TbSmtp::getSmtp();

        $button = Escola_Button::getInstance();
        $button->setTitulo("CONFIGURAÇÕES GERAIS");
        $button->addScript("Salvar", "salvarFormulario('formulario')", "icon-save");
        $button->addAction("Cancelar", "intranet", "index", "icon-remove-circle");
    }

}
