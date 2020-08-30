<?php

class Escola_Relatorio_Servico_DEIPVA_TAXI extends Escola_Relatorio_Servico {

    public function __construct() {
        parent::__construct();
        $this->setFilename("declaracao_isencao_ipva");
        $this->SetLeftMargin(10);
        $this->SetRightMargin(10);
        $this->SetTopMargin(10);
        $this->SetTopMargin(10);
    }

    public function header() {
        
    }

    public function validarEmitir() {
        $p_errors = parent::validarEmitir();
        $errors = array();
        $transporte = $this->registro->pegaTransporte();
        if (!$transporte) {
            $errors[] = "NENHUM TRANSPORTE VINCULADO!";
        } else {
            if ($this->registro->veiculo()) {
                $tv = $this->registro->pegaReferencia();
                if ($tv) {
                    $veiculo = $tv->findParentRow("TbVeiculo");
                }
            } else {
                $veiculo = $transporte->pegaVeiculo();
            }
            if (!$veiculo) {
                $errors[] = "TRANSPORTE NÃO POSSUI VEÍCULO VINCULADO!";
            } else {
                if ($veiculo->sem_placa()) {
                    $errors[] = "VEÍCULO DE CHASSI [{$veiculo->chassi}] NÃO POSSUI PLACA!";
                }
                if ($veiculo->retido()) {
                    $errors[] = "VEÍCULO VINCULADO AO TRANSPORTE ENCONTRA-SE RETIDO AO PÁTIO DA STTRANS!";
                }
            }
        }
        if ($p_errors) {
            $errors = array_merge($p_errors, $errors);
        }
        if (count($errors)) {
            return $errors;
        }
        return false;
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
        $veiculo = $transporte->pegaVeiculo();
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
        <div class="negrito">Ao Ilmo. Senhor<br />Secretário da SEFAZ.</div>
        <p></p>
        <div class="negrito">Assunto: Isenção de I.P.V.A. <?php if ($this->registro->ano_referencia) { ?>(<?php echo $this->registro->ano_referencia; ?>)<?php } ?></div>
        <p></p>
        <div class="declaracao"><u>DECLARAÇÃO</u></div>
        <p></p><p></p>
        <div class="paragrafo">A <?php echo $pj->razao_social; ?>-<?php echo $pj->sigla; ?>, autarquia municipal de regime especial, criada através da Lei No.: 434/1999, inscrita no CNPJ/SRFB/MF sob o No.: <?php echo $pj->mostrar_documento(); ?>, Órgão Executivo Municipal de Transportes e Trânsito declara para os fins de direito, que o veículo abaixo individuado, encontra-se registrado no Cadastro de Veículos de Aluguel na Categoria Transporte Individual de Passageiros (Táxi), vinculado à Permissão <?php echo $transporte->mostrar_codigo(); ?> de titularidade do(a) Sr(a). <?php echo $proprietario_pf->mostrar_nome(); ?> outorgada através do Decreto No.: <?php echo $concessao->decreto; ?>, em carater <?php echo $concessao->findParentRow("TbConcessaoTipo")->toString(); ?>.</div>
        <div class="paragrafo">Dados do Veículo:</div>
        <p></p>
        <table border="1" cellpadding="5" class="tabela_ipva">
            <tr class="centro negrito">
                <td>Marca/Modelo</td>
                <td width="110px">Ano/Fab</td>
                <td>Cor</td>
                <td width="170px">Chassi</td>
                <td width="110px">Placa</td>
            </tr>
            <tr>
                <td><?php echo $veiculo->findParentRow("TbFabricante")->toString(); ?> / <?php echo $veiculo->modelo; ?></td>
                <td class="centro"><?php echo $veiculo->ano_fabricacao; ?>/<?php echo $veiculo->ano_modelo; ?></td>
                <td class="centro"><?php echo $veiculo->findParentRow("TbCor")->toString(); ?></td>
                <td class="centro"><?php echo $veiculo->chassi; ?></td>
                <td class="centro"><?php echo $veiculo->placa; ?></td>
            </tr>
        </table>
        <p></p><p></p><p></p><p></p>
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
            div, td {
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
            .tabela_ipva td {
                font-size: 10pt;
            }
        </style>
        <?php
    }

}
