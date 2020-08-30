<?php

class Escola_Relatorio_Servico_DEIPI_TAXI extends Escola_Relatorio_Servico {

    public function __construct() {
        parent::__construct();
        $this->setFilename("declaracao_isencao_ipi");
        $this->SetLeftMargin(20);
        $this->SetRightMargin(20);
        $this->SetTopMargin(20);
        $this->SetTopMargin(10);
    }

    public function header() {
        
    }

    public function toPDF() {
        if (!$this->registro) {
            return false;
        }
        $transporte = $this->registro->pegaTransporte();
        if (!$transporte) {
            return false;
        }
        $this->setFilename($this->getFilename() . "_" . $this->registro->ano_referencia . "_" . Escola_Util::zero($this->registro->codigo, 4));
        if ($this->registro->veiculo()) {
            $tv = $this->registro->pegaReferencia();
            if ($tv) {
                $veiculo = $tv->findParentRow("TbVeiculo");
            }
        } else {
            $veiculo = $transporte->pegaVeiculo();
        }
        $proprietario = $transporte->pegaProprietario();
        $tb = new TbSistema();
        $sistema = $tb->pegaSistema();
        $pj = $pessoa = $arquivo = false;
        if ($sistema) {
            $pj = $sistema->findParentRow("TbPessoaJuridica");
            $pessoa = $pj->pega_pessoa();
            $arquivo = $pessoa->getFoto();
        }
        $this->AddPage();
        ob_start();
        $this->css();
        ?>
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td align="center" width="100px" rowspan="4"><img src="<?php echo $arquivo->pegaNomeCompleto(); ?>" alt="" /></td>
                            <td align="center" class="titulo_servico titulo_servico_mini" width="500px">ESTADO DO AMAPÁ</td>
                        </tr>
                        <tr><td align="center" class="titulo_servico titulo_servico_mini">PREFEITURA MUNICIPAL DE SANTANA</td></tr>
                        <tr><td align="center" class="titulo_servico titulo_servico_mini"><?php echo $pj->razao_social; ?></td></tr>
                        <tr><td align="center" class="titulo_servico titulo_servico_mini">DIRETORIA DE TRANSPORTES</td></tr>
                    </table>
                </td>
            </tr>
        </table>
        <div class="negrito">Declaração No.: <?php echo $this->registro->mostrar_numero(); ?>-<?php echo $pj->sigla; ?></div>
        <?php
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
        if ($proprietario) {
            $pessoa = $proprietario->findParentRow("TbPessoa");
            if ($pessoa) {
                $proprietario_pf = $pessoa->pegaPessoaFilho();
                $endereco = $pessoa->getEndereco();
                $endereco_txt = "";
                if ($endereco) {
                    $endereco_txt = $endereco->logradouro;
                    if ($endereco->numero) {
                        $endereco_txt .= ", " . $endereco->numero;
                    }
                    if ($endereco->complemento) {
                        $endereco_txt .= "-" . $endereco->complemento;
                    }
                    $bairro = $endereco->findParentRow("TbBairro");
                    if ($bairro) {
                        $endereco_txt .= " - " . $bairro->descricao;
                    }
                }
            }
        }
        $concessao = $transporte->findParentRow("TbConcessao");
        ?>
        <div class="direita negrito"><?php echo $municipio; ?>-<?php echo $uf; ?>, <?php echo $dia; ?> de <?php echo $desc_mes; ?> de <?php echo $ano; ?>.</div>
        <div class="negrito">Ao Ilmo. Senhor<br />Delegado da Receita Federal.</div>
        <p></p>
        <div class="negrito">Assunto: Isenção de I.P.I.</div>
        <p></p>
        <div class="declaracao"><u>DECLARAÇÃO</u></div>
        <p></p><p></p>
        <div class="paragrafo">A <?php echo $pj->razao_social; ?>-<?php echo $pj->sigla; ?>, autarquia municipal de regime especial, criada através da Lei No.: 434/1999, inscrita no CNPJ/SRFB/MF sob o No.: <?php echo $pj->mostrar_documento(); ?>, Órgão Executivo Municipal de Transportes e Trânsito, declara para os fins de direito que o(a) Senhor(a) <span class="negrito"><?php echo $proprietario_pf->mostrar_nome(); ?></span>, RG <?php echo $proprietario_pf->mostrar_identidade(); ?> e CPF <?php echo $proprietario_pf->mostrar_documento(); ?> residente e domiciliado na <?php echo $endereco_txt; ?>, é Permissionário na Categoria Transporte Individual de Passageiros (Táxi) neste Município vinculado a <span class="negrito"><?php echo $transporte->mostrar_codigo(); ?></span> outorgada através do <span class="negrito"><?php echo $concessao->decreto; ?></span> em Caráter de Uso <span class="negrito"><?php echo $concessao->findParentRow("TbConcessaoTipo")->toString(); ?></span>.</div>
        <p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>
        <div class="centro"><?php echo $pj->sigla; ?></div>
        <?php
        $html = ob_get_contents();
        ob_end_clean();
        $this->writeHTML(utf8_encode($html), true, false, true, false, '');
        $this->lastPage();
        $this->download();
    }

    public function css() {
        ?>
        <style type="text/css">
            div {
                font-size: 12pt;
            }
            .tabela {
                border: 2px solid #000;
            }
            .titulo_servico {
                font-family: "Times New Roman";
                font-size: 20pt;
                font-style: italic;
            }
            .titulo_servico_mini {
                font-family: "Arial";
                font-style: normal;
                font-weight: bold;
                font-size: 12pt;
            }
            .negrito {
                font-weight: bold;
            }
            .rr {
                background-color: #ccc;
            }
            .campo_legenda {
                font-size: 10pt;
            }
            .campo_valor {
                font-size: 12pt;
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
            .declaracao {
                font-size: 22pt;
                font-weight: bold;
                text-align: center;
            }
            .fonte_14pt {
                font-size: 14pt;
            }
        </style>
        <?php
    }

}
