<?php
class Escola_Controller_Default extends Escola_Controller {

    public function preDispatch() {
        $view = $this->view;
        $view->headLink()->appendStylesheet($view->baseUrl() . "/css/bootstrap.css");
        $view->headLink()->appendStylesheet($view->baseUrl() . "/css/animate.css");
        //$view->headLink()->appendStylesheet($view->baseUrl() . "/css/theme.css");
        $view->headLink()->appendStylesheet($view->baseUrl() . "/css/font-awesome.min.css");
        $view->headLink()->appendStylesheet($view->baseUrl() . "/css/font.css");
        $view->headLink()->appendStylesheet($view->baseUrl() . "js/plugins/fuelux/fuelux.css");
        $view->headLink()->appendStylesheet($view->baseUrl() . "/css/plugin.css");
        $view->headLink()->appendStylesheet($view->baseUrl() . "/css/app.css");
        $view->headLink()->appendStylesheet($view->baseUrl() . "/css/table-responsive.css");
        //$view->headLink()->appendStylesheet($view->baseUrl() . "/css/" . $this->_helper->layout->getLayout() . "/site.css");
        //$view->headScript()->appendFile($view->baseUrl() . "/js/" . $this->_helper->layout->getLayout() . "/interface.js");
        $view->headScript()->appendFile($view->baseUrl() . "/js/bootstrap.js");
        $view->headScript()->appendFile($view->baseUrl() . "/js/app.js");
        $view->headScript()->appendFile($view->baseUrl() . "/js/app.plugin.js");
        $view->headScript()->appendFile($view->baseUrl() . "/js/app.data.js");
        $view->headScript()->appendFile($view->baseUrl() . "/js/plugins/bootstrap-notify/bootstrap-notify.min.js");
        $view->headScript()->appendFile($view->baseUrl() . "/js/plugins/fuelux/fuelux.js");
        parent::preDispatch();
    }

}