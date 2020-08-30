<?php

class Escola_Relatorio_Servico extends Escola_Relatorio {

    protected $registro = false;

    public function __construct() {
        parent::__construct("relatorio_solicitacao_servico");
        $this->SetTopMargin(50);
    }

    public function set_registro($registro) {
        $this->registro = $registro;
    }

    public function setRegistro($registro) {
        $this->set_registro($registro);
    }

    public function getRegistro() {
        return $this->registro;
    }

    public function header() {
        $tb = new TbSistema();
        $sistema = $tb->pegaSistema();
        if (!$sistema) {
            throw new Exception("Falha ao Gerar Relatorio, Confirações do Sistema Inválidas!");
        }

        $pj = $sistema->findParentRow("TbPessoaJuridica");
        if (!$pj) {
            throw new Exception("Falha ao Gerar Relatorio, Confirações do Sistema Inválidas!!");
        }
        
        $end_array = $pj->getEnderecoArray();
        $end_array[] = Escola_Util::formatCnpj($pj->cnpj);
        
        $arquivo = $pj->getFoto();
        $this->SetY(5);
        ob_start();
        $this->css();
        ?>
        <table width="100%">
            <tr>
                <td align="center" width="100px"></td>
                <td align="left" width="570px">ESTADO DO AMAPÁ</td>
            </tr>
            <tr>
                <td align="center" width="100px"></td>
                <td align="left" width="570px"><?php echo $pj->sigla; ?> - <?php echo $pj->razao_social; ?><br /><br /><?php echo implode("<br />", $end_array); ?></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td align="center" colspan="2" class="titulo_servico titulo_servico_mini">DIRETORIA DE TRANSPORTES</td>
            </tr>
        </table>
        <?php
        $html = ob_get_contents();
        ob_end_clean();
        $this->writeHTML(utf8_encode($html), true, false, true, false, '');
    }

    public function toPDF() {
        return $this->imprimir();
    }

    public function imprimir() {
        return null;
    }

    public function validarEmitir() {
        $errors = array();
        if (!$this->registro) {
            $errors[] = "Nenhuma Solicitação de Serviço Definida!";
        }
        if (count($errors)) {
            return $errors;
        }
        return false;
    }

}
