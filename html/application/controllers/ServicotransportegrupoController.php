<?php 
class ServicotransportegrupoController extends Escola_Controller_Logado {

    public function init() {
		$ajaxContext = $this->_helper->getHelper("AjaxContext");
		$ajaxContext->addActionContext("info", "json");
		$ajaxContext->initContext();
	}	
    
    public function infoAction() {
        $obj = new stdClass();
        $dados = $this->getRequest()->getPost();
        $tb = new TbServicoSolicitacao();
        $ss = $tb->createRow();
        $ss->setFromArray($dados);
        $stg = $ss->findParentRow("TbServicoTransporteGrupo");
        $ss->atualiza_datas();
        $obj->valor = utf8_encode($stg->pega_valor()->toString());
        $obj->data_inicio = utf8_encode(Escola_Util::formatData($ss->data_inicio));
        $obj->data_validade = utf8_encode(Escola_Util::formatData($ss->data_validade));
        $obj->data_vencimento = utf8_encode(Escola_Util::formatData($ss->data_vencimento));
        $this->view->result = $obj;
    }
}