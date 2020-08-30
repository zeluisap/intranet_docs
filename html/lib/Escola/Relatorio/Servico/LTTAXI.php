<?php

class Escola_Relatorio_Servico_LTTAXI extends Escola_Relatorio_Servico {

    public function __construct() {
        parent::__construct();
        $this->setFilename("relatorio_licenca_taxi");
        $this->SetTopMargin(5);
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

        $licenca_data_emissao = $licenca_data_validade = $proprietario_txt = $chassi = $lotacao = $tara = $cor = $ano_fab = $ano_modelo = $veiculo_tipo = $decreto = $veiculo_placa = $veiculo_fabricante = $veiculo_categoria = $txt_modelo = "";

        if ($this->registro) {
            $licenca_data_emissao = Escola_Util::formatData($this->registro->data_inicio);
            $licenca_data_validade = Escola_Util::formatData($this->registro->data_validade);
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
        if ($proprietario) {
            $proprietario_txt = $proprietario->toString();
        }
        $stg = $this->registro->findParentRow("TbServicoTransporteGrupo");
        $servico = $stg->findParentRow("TbServico");
        $tg = $stg->findParentRow("TbTransporteGrupo");
        $veiculo_categoria = $tg->toString();
        $tb = new TbSistema();
        $sistema = $tb->pegaSistema();
        $arquivo = false;
        if ($sistema) {
            $pj = $sistema->findParentRow("TbPessoaJuridica");
            $pessoa = $pj->pega_pessoa();
            $arquivo = $pessoa->getFoto();
        }
        $this->AddPage();
        $this->Image($arquivo->pegaNomeCompleto(), 11, 11, 25, 20, "png");
        ob_start();
        $this->css();
        $concessao = $transporte->findParentRow("TbConcessao");
        if ($concessao) {
            $decreto = $concessao->decreto;
        }
        if ($veiculo) {
            $vf = $veiculo->findParentRow("TbFabricante");
            if ($vf) {
                $veiculo_fabricante = $vf->toString();
            }
            $vt = $veiculo->findParentRow("TbVeiculoTipo");
            if ($vt) {
                $veiculo_tipo = $vt->toString();
            }
            $c = $veiculo->findParentRow("TbCor");
            if ($c) {
                $cor = $c->toString();
            }
            $veiculo_placa = $veiculo->placa;
            if ($veiculo->tara) {
                $tara = Escola_Util::number_format($veiculo->tara);
            }
            if ($veiculo->lotacao) {
                $lotacao = $veiculo->lotacao;
                if ($veiculo->lotacao > 1) {
                    $lotacao = $lotacao . " Pessoas";
                } else {
                    $lotacao = $lotacao . " Pessoa";
                }
            }
            $ano_fab = $veiculo->ano_fabricacao;
            $ano_modelo = $veiculo->ano_modelo;
            $chassi = $veiculo->chassi;

            if ($veiculo->modelo) {
                $txt_modelo = $veiculo->modelo;
            }
        }
        $motoristas = $transporte->pegaMotoristas();
        $ajudantes = $transporte->pegaPessoa("AU");
        ?>
        <div class="tabela">
            <br /> 
            <table width="100%">
                <tr>
                    <td align="center" width="100px"></td>
                    <td align="left" width="570px"><?php echo $pj->sigla; ?> - <?php echo $pj->razao_social; ?><br /><?php
                        if ($pessoa) {
                            $end = $pessoa->getEndereco();
                            if ($end) {
                                $endereco_1 = $end->logradouro;
                                if ($end->numero) {
                                    $endereco_1.= ", " . $end->numero;
                                }
                                $bairro = $end->findParentRow("TbBairro");
                                $municipio = $uf = false;
                                if ($bairro) {
                                    $endereco_1 .= " - " . $bairro->descricao;
                                    $municipio = $bairro->findParentRow("TbMunicipio");
                                    if ($municipio) {
                                        $endereco_1 .= " - " . $municipio->descricao;
                                        $uf = $municipio->findParentRow("TbUf");
                                    }
                                }
                                $endereco_2 = "CEP " . Escola_Util::formatCep($end->cep);
                                $fones = $pessoa->mostrarTelefones();
                                if ($fones) {
                                    $endereco_2 .= " - Fone(s): " . $fones;
                                }
                                if ($municipio) {
                                    $endereco_2 .= " - " . $municipio->descricao;
                                }
                                if ($uf) {
                                    $endereco_2 .= " / " . $uf->sigla;
                                }
                                echo $endereco_1;
                                ?><br /><?php echo $endereco_2; ?><br />CNPJ: <?php echo Escola_Util::formatCnpj($pj->cnpj); ?>
                            <?php }
                        }
                        ?>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td align="center" colspan="2" class="titulo_servico titulo_servico_mini">DIRETORIA DE TRANSPORTES</td>
                </tr>
                <tr><td></td></tr>
                <tr><td align="center" colspan="2" class="titulo_servico">LICENÇA DE TRÁFEGO <?php echo $transporte->mostrar_codigo(); ?>  - No. <?php echo $this->registro->mostrar_numero(); ?></td></tr>
            </table>
        </div>

        <div class="tabela">
            <table border="1">
                <tr>
                    <td colspan="6">
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Certificamos que o presente veículo foi vistoriado, estando apto a executar o Serviço de Transporte</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $veiculo_categoria; ?></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Marca:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $veiculo_fabricante; ?></td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Placa:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $veiculo_placa; ?></td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Decreto:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $decreto; ?></td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Vencimento:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Espécie/Tipo:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $veiculo_tipo; ?></td>
                            </tr>
                        </table>
                    </td>
                    <td colspan="3">
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Modelo:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $txt_modelo; ?></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Ano Fab / Modelo:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $ano_fab; ?> / <?php echo $ano_modelo; ?></td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Cor:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $cor; ?></td>
                            </tr>
                        </table>
                    </td>
                    <!--
                                    <td>
                                        <table cellpadding="5">
                                            <tr>
                                                <td class="campo_titulo">Tara:</td>
                                            </tr>
                                            <tr>
                                                <td class="campo_valor"><?php echo $tara; ?></td>
                                            </tr>
                                        </table>
                                    </td>
                    -->
                    <td>
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Lotação:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $lotacao; ?></td>
                            </tr>
                        </table>
                    </td>
                    <td colspan="2">
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Chassi:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $chassi; ?></td>
                            </tr>
                        </table>
                    </td>                
                </tr>
                <tr>
                    <td colspan="6">
                        <table cellpadding="5">
                            <tr>
                                <td class="campo_titulo">Nome Proprietário:</td>
                            </tr>
                            <tr>
                                <td class="campo_valor"><?php echo $proprietario_txt; ?></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <?php /*
                  if ($motoristas) { ?>
                  <tr>
                  <td colspan="6">
                  <table cellpadding="5">
                  <tr>
                  <td class="campo_titulo">Motorista(s):</td>
                  </tr>
                  <?php foreach ($motoristas as $motorista) { ?>
                  <tr>
                  <td class="campo_valor"><?php echo $motorista->toString(); ?></td>
                  </tr>
                  <?php } ?>
                  </table>
                  </td>
                  </tr>
                  <?php } ?>
                  <?php if ($ajudantes) { ?>
                  <tr>
                  <td colspan="6">
                  <table cellpadding="5">
                  <tr>
                  <td class="campo_titulo">Ajudante(s):</td>
                  </tr>
                  <?php foreach ($ajudantes as $ajudante) { ?>
                  <tr>
                  <td class="campo_valor"><?php echo $ajudante->toString(); ?></td>
                  </tr>
                  <?php } ?>
                  </table>
                  </td>
                  </tr>
                  <?php } */ ?>
                <tr>
                    <td colspan="6">
                        <table cellpadding="5">
                            <tr>
                                <td>Data Início: <?php echo $licenca_data_emissao; ?></td>
                                <td>Data Validade: <?php echo $licenca_data_validade; ?></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table>
                <tr><td colspan="2">
                        <table cellpadding="8">
                            <tr>
                                <td>Obs.: É obrigatória a apresentação desta, quando solicitada pelos fiscais da STTRANS e guardas de trânsito.</td>
                            </tr>
                        </table>

                    </td></tr>
                <tr><td colspan="2"></td></tr>
                <tr><td colspan="2"></td></tr>
                <tr><td colspan="2"></td></tr>
                <tr><td colspan="2"></td></tr>
                <tr><td colspan="2"></td></tr>
                <tr><td align="center"><?php echo $pj->sigla; ?></td><td align="center"><?php echo $pj->sigla; ?></td></tr>
            </table>
        </div>
        <?php
        $html = ob_get_contents();
        ob_end_clean();
        $this->writeHTML(utf8_encode($html), true, false, true, false, '');
        $this->lastPage();
        $this->download();
    }

    public function css() {
        parent::css();
        ?>
        <style type="text/css">
            td.campo_valor {
                text-indent: 10px;
            }
        </style>
        <?php
    }

}
