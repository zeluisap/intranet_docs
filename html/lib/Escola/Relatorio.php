<?php

class Escola_Relatorio extends TCPDF {

    protected $dados = array();
    private $filename = "relatorio";
    protected $relatorio = false;

    public function __construct($filename) {
        $this->setFilename($filename);

        parent::__construct(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'ISO-8859-1', false);

        // set document information
        $this->SetCreator(PDF_CREATOR);
        $this->SetAuthor('Intranet');
        $this->SetTitle($this->getFilename());
        $this->SetSubject($this->getFilename());
        $this->SetKeywords('TCPDF, PDF');

        // set default header data
        //$this->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 006', PDF_HEADER_STRING);
        // set header and footer fonts
        $this->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
        $this->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

        // set default monospaced font
        $this->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

        //set margins
        $this->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $this->SetHeaderMargin(0);
        $this->SetFooterMargin(PDF_MARGIN_FOOTER);

        //set auto page breaks
        $this->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

        //set image scale factor
        $this->setImageScale(PDF_IMAGE_SCALE_RATIO);

        //set some language-dependent strings
        //$this->setLanguageArray($l);
        // set font
        $this->SetFont('helvetica', '', 8);
    }

    public function header() {
        $tb = new TbSistema();
        $sistema = $tb->pegaSistema();
        $pj = $sistema->findParentRow("TbPessoaJuridica");
        $pessoa = $pj->findParentRow("TbPessoa");
        $arquivo = $pessoa->getFoto();
        $this->Image($arquivo->pegaNomeCompleto(), 5, 5, 40, 20, "png");
        $this->setY(5);
        ob_start();
        $this->css();
        ?>
        <table>
            <tr>
                <td align="center" class="titulo">ESTADO DO AMAPÁ</td>
            </tr>
            <tr>
                <td align="center" class="titulo"><?php echo $pj->razao_social; ?></td>
            </tr>
        </table>
        <br />
        <?php
        $html = ob_get_contents();
        ob_end_clean();
        $this->writeHTML(utf8_encode($html), true, false, true, false, '');
    }

    public function getFilename() {
        return $this->filename;
    }

    public function setFilename($filename) {
        $this->filename = $filename;
    }

    public function show() {
        $this->Output($this->filename . ".pdf", 'I');
        die();
    }

    public function download() {
        $this->Output($this->filename . ".pdf", 'D');
        die();
    }

    public function salvar() {
        $this->Output($this->filename . ".pdf", 'F');
        die();
    }

    public function set_dados($dados) {
        $this->dados = $dados;
    }

    public function get_dados() {
        return $this->dados;
    }

    public function get_relatorio() {
        return $this->relatorio;
    }

    public function set_relatorio($relatorio) {
        $this->relatorio = $relatorio;
    }

    public function mostrar_data_completa($pessoa) {
        $dia = date("d");
        $desc_mes = Escola_Util::pegaMes(date("n"));
        $ano = date("Y");
        $municipio = "Santana";
        $uf = "AP";
        if ($pessoa) {
            $endereco = $pessoa->getEndereco();
            $bairro = $endereco->findParentRow("TbBairro");
            if ($bairro) {
                $mun = $bairro->findParentRow("TbMunicipio");
                if ($mun) {
                    $municipio = $mun->descricao;
                    $obj_uf = $mun->findParentRow("TbUf");
                    if ($obj_uf) {
                        $uf = $obj_uf->sigla;
                    }
                }
            }
        }
        return "{$municipio}-{$uf}, {$dia} de {$desc_mes} de {$ano}.";
    }

    public function css() {
        ?>
        <style type="text/css">
            body, td, div {
                font-size: 10pt;
            }
            .tabela {
                border: 2px solid #000;
            }
            .titulo_servico {
                font-size: 15pt;
                font-weight: bold;
            }
            .titulo_servico_mini {
                font-size: 13pt;
            }
            .negrito {
                font-weight: bold;
            }
            .rr {
                background-color: #ccc;
            }
            .italico {
                font-style: italic;
            }
            .esquerda {
                text-align: left;
            }
            .direita {
                text-align: right;
            }
            .centro {
                text-align: center;
            }
            .paragrafo {
                text-indent: 50px;
                text-align: justify;
                line-height: 6px;
            }
            div.normal {
                text-align: justify;
                line-height: 6px;
            }
            .fonte_14pt {
                font-size: 14pt;
            }
            .fonte_16pt {
                font-size: 16pt;
            }
            .fonte_20pt {
                font-size: 20pt;
            }
        </style>
        <?php
    }

}
