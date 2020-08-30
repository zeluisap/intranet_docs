<?php

class Escola_Controller extends Zend_Controller_Action {

    public function preDispatch() {

        $controller = $this->getRequest()->getControllerName();
        if ($controller != "error") {
            //página online
            $online = true;
            $config = Zend_Registry::get("config");

            if (isset($config->sistema->online)) {
                $online = $config->sistema->online;
            }

            if (!$online) {
                $this->_redirect("error/indisponivel");
            }
        }

        $this->view->actionErrors = $this->_getFlashMessages("Errors");
        $this->view->actionMessages = $this->_getFlashMessages("Messages");

        $action = $this->getRequest()->getActionName();
        if (!(($controller == "error") || (($controller == "auth") && ($action == "sistema" || $action == "salvar")))) {
            $tb_sistema = new TbSistema();
            $sistema = $tb_sistema->pegaSistema();
            if (!$sistema) {
                $msgs = $this->_getFlashMessages("Errors");
                $this->_flashMessage("Nenhuma informação do Sistema cadastrada, efetue o cadastro antes de prosseguir!");
                if (count($msgs)) {
                    foreach ($msgs as $msg) {
                        $this->_flashMessage($msg);
                    }
                }
                $this->_redirect("auth/sistema");
            }
        }
        $view = $this->initView();
        $paths = $view->getScriptPaths();
        $front = Zend_Controller_Front::getInstance();
        $filename = $paths[0] . $controller . "/_css.css";
        if (file_exists($filename)) {
            $view->headStyle()->appendStyle(file_get_contents($filename));
        }
        $filename = $paths[0] . $controller . "/" . $action . ".css";
        if (file_exists($filename)) {
            $view->headStyle()->appendStyle(file_get_contents($filename));
        }
        ob_start();
        include(ROOT_DIR . "/public/js/" . $this->_helper->layout->getLayout() . "/site.js");
        $script = ob_get_contents();
        ob_end_clean();
        if (trim($script)) {
            $view->headScript()->appendScript($script);
        }
    }

    public function postDispatch() {
        /* início recovery */
        /*
          $tb_pais = new TbPais(); $tb_pais->recuperar();
          $tb_uf = new TbUf(); $tb_uf->recuperar();
          $tb = new TbMunicipio(); $tb->recuperar();
          $tb = new TbBairro(); $tb->recuperar();
          $tb = new TbUsuarioSituacao(); $tb->recuperar();
          $tb_modulo = new TbModulo(); $tb_modulo->recuperar();
          $tb = new TbSetorNivel(); $tb->recuperar();
          $tb = new TbFuncionarioFuncaoTipo(); $tb->recuperar();
          $tb = new TbLotacaoTipo(); $tb->recuperar();
          $tb = new TbFuncionarioSituacao(); $tb->recuperar();
          $tb = new TbCargoTipo(); $tb->recuperar();
          $tb = new TbArquivoTipo(); $tb->recuperar();
          $tb = new TbMensagemTipo(); $tb->recuperar();
          $tb = new TbInfoTipo(); $tb->recuperar();
          $tb = new TbInfoStatus(); $tb->recuperar();
          $tb = new TbMenuPosicao(); $tb->recuperar();
          $tb = new TbMenuTipo(); $tb->recuperar();
          $tb = new TbMensagemTipo(); $tb->recuperar();
          $tb = new TbComentarioStatus(); $tb->recuperar();
          $tb = new TbDocumentoTipoTarget(); $tb->recuperar();
          $tb = new TbDocumentoModo(); $tb->recuperar();
          $tb = new TbDocumentoStatus(); $tb->recuperar();
          $tb = new TbSetorTipo(); $tb->recuperar();
          $tb = new TbMovimentacaoTipo(); $tb->recuperar();
          $tb = new TbChamadoStatus(); $tb->recuperar();
          $tb = new TbChamadoOcorrenciaTipo(); $tb->recuperar();
          $tb = new TbFuncionarioOcorrenciaTipo(); $tb->recuperar();
          $tb = new TbPrioridade(); $tb->recuperar();
          $tb = new TbPortalStatus(); $tb->recuperar();
          $tb = new TbIconeTipo(); $tb->recuperar();
          $tb = new TbPacote(); $tb->recuperar();
          $tb = new TbVinculoTipo(); $tb->recuperar();
          $tb = new TbVinculoStatus(); $tb->recuperar();
          $tb = new TbInfoBancariaTipo(); $tb->recuperar();
          $tb = new TbBolsistaStatus(); $tb->recuperar();
          $tb = new TbPrevisaoTipo(); $tb->recuperar();
          $tb = new TbVinculoLoteStatus(); $tb->recuperar();
          $tb = new TbVinculoLoteItemStatus(); $tb->recuperar();
          $tb = new TbAditivoTipo(); $tb->recuperar();
          $tb = new TbVinculoLoteOcorrenciaTipo(); $tb->recuperar();
          $tb = new TbServicoTipo(); $tb->recuperar();
          $tb = new TbTransportePessoaTipo(); $tb->recuperar();
          $tb = new TbTransporteVeiculoStatus(); $tb->recuperar();
          $tb = new TbServicoSolicitacaoStatus(); $tb->recuperar();
          $tb = new TbServicoSolicitacaoPagamentoStatus(); $tb->recuperar();
          $tb = new TbTransporteGrupo(); $tb->recuperar();
          /* fim recovery */

        $controller = $this->getRequest()->getControllerName();
        $action = $this->getRequest()->getActionName();
        $view = $this->initView();
        $paths = $view->getScriptPaths();
        $script = "";
        ob_start();
        if (file_exists($paths[0] . $controller . "/_js.php")) {
            include($paths[0] . $controller . "/_js.php");
        }
        if (file_exists($paths[0] . $controller . "/" . $action . ".js.php")) {
            include($paths[0] . $controller . "/" . $action . ".js.php");
        }
        $script = ob_get_contents();
        ob_end_clean();
        if (trim($script)) {
            $view->headScript()->appendScript($script);
        }
        $alerta = Escola_Alerta::getInstance();
        $tb = new TbFuncionario();
        $funcionario = $tb->pegaLogado();
        if ($funcionario) {
            $alerta->add($funcionario);
        }
    }

    protected function _flashMessage($message, $option = "Errors") {
        $flashMessage = $this->_helper->FlashMessenger;
        $flashMessage->setNamespace("action" . $option);
        $flashMessage->addMessage($message);
    }

    protected function _getFlashMessages($option) {
        $flashMessage = $this->_helper->FlashMessenger;
        $flashMessage->setNamespace("action" . $option);
        return $flashMessage->getMessages();
    }

    public function addErro($erro) {
        $this->_flashMessage($erro);
    }

    public function addMensagem($mensagem) {
        $this->_flashMessage($mensagem, "Messages");
    }

}
