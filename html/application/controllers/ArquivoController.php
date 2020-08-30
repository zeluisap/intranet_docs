<?php

class ArquivoController extends Escola_Controller_Default {

    public function showAction() {
        $result = false;
        $arquivo = TbArquivo::pegaPorId($this->_request->getParam("id"));
        $this->view->arquivo = false;
        if ($arquivo) {
            $this->view->arquivo = $arquivo->getWideImage();
            if ($this->_request->getParam("width")) {
                if ($this->_request->getParam("height")) {
                    $mode = $this->_request->getParam("mode");
                    if (!$mode) {
                        $mode = "inside";
                    }
                    $this->view->arquivo = $this->view->arquivo->resize($this->_request->getParam("width"), null, $mode);
                    $this->view->arquivo = $this->view->arquivo->crop(0, 0, $this->_request->getParam("width"), $this->_request->getParam("height"));
                } else {
                    $this->view->arquivo = $this->view->arquivo->resize($this->_request->getParam("width"));
                }
            }
            header("Content-type: image/jpeg");
            if ($this->view->arquivo) {
                echo $this->view->arquivo->asString("jpg", 80);
            } else {
                echo "falha ao executar operaï¿½ï¿½o!";
            }
        }
        die();
    }

    public function viewAction() {
        $result = false;
        $arquivo = TbArquivo::pegaPorId($this->_request->getParam("id"));
        if ($arquivo) {
            $arquivo_tipo = $arquivo->findParentRow("TbArquivoTipo");
            $filename = $arquivo->pegaNomeCompleto();
            $operacao = "attachment";
            if ($arquivo_tipo->eImagem()) {
                $operacao = "inline";
            }
            $ext = pathinfo($filename, PATHINFO_EXTENSION);
            if (!$ext) {
                $ext = $arquivo_tipo->extensao;
            }
            $filter = new Zend_Filter_CharConverter();
            $filename_new = str_replace(" ", "_", Escola_Util::minuscula($filter->filter($arquivo->legenda))) . "." . Escola_Util::pegaExtensao($filename);
            header("Content-Type: " . $arquivo_tipo->mime_type);
            header("Content-Disposition: {$operacao}; filename=" . $filename_new);
            $f = fopen($filename, "r");
            $buffer = fread($f, filesize($filename));
            fclose($f);
            echo $buffer;
        }
        die();
    }

}
