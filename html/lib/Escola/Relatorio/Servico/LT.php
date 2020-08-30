<?php

class Escola_Relatorio_Servico_LT extends Escola_Relatorio_Servico {

    public function __construct() {
        parent::__construct();
        $this->setFilename("relatorio_licenca_" . date("YmdHis"));
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
                $errors[] = "TRANSPORTE NÃO POSSUI VEÍCULO VINCULADO VINCULADO!";
            } else {
                if ($veiculo->sem_placa()) {
                    $errors[] = "VEÍCULO DE CHASSI [{$veiculo->chassi}] NÃO POSSUI PLACA!";
                } elseif ($veiculo->recolhido()) {
                    //$errors[] = "VEï¿½CULO DE CHASSI [{$veiculo->chassi}] E PLACA [{$veiculo->placa}] ESTï¿½ COM STATUS RECOLHIDO!";
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

        $path_arquivo = (new TbSistema())->pegaSistema()->getPathArquivo();

        if (!$this->registro) {
            throw new Exception("Falha ao Emitir Licenca! Dados Invalidos!");
        }
        $transporte = $this->registro->pegaTransporte();
        if (!$transporte) {
            throw new Exception("Falha ao Emitir Licenca! Dados Invalidos!!");
        }

        $licenca = $this->registro;

        $comissionario = $transporte->pegaProprietario();
        if (!$comissionario) {
            throw new Exception("Falha ao Executar Operação, Nenhum Proprietário Disponível!");
        }
        $pessoa = $comissionario->getPessoa();
        if (!$pessoa) {
            throw new Exception("Falha ao Executar Operação, Nenhum Proprietário Disponível!!");
        }
        if ($pessoa->pf()) {
            $tv = null;
            if ($this->registro->veiculo()) {
                $tv = $this->registro->pegaReferencia();
            }
            $comissionario->emitirCarteiraAtiva($tv, $this->registro);
            die();
        }
        $font_name = "Helvetica";

        $txt_licenca_numero = $txt_licenca_ano = $txt_transporte = $txt_placa = $txt_marca_modelo = $txt_cor = $txt_ano_fab = $txt_chassi = $txt_tipo_especie = $txt_nome_proprietario = $txt_emissao = $txt_validade = "";
        if (!$licenca->codigo) {
            throw new Exception("Licenca nao possui numero!");
        }
        $txt_licenca_numero = $licenca->codigo;
        if (!$licenca->ano_referencia) {
            throw new Exception("Licenca nao possui Ano!");
        }
        $txt_licenca_ano = $licenca->ano_referencia;

        $transporte = $licenca->pegaTransporte();
        if (!$transporte) {
            throw new Exception("Nenhum Transporte Vinculado!");
        }
        $tg = $transporte->getTransporteGrupo();
        if (!$tg) {
            throw new Exception("Nenhum Grupo de Transporte Vinculado!");
        }
        $txt_transporte = $tg->toString();

        $veiculo = $transporte->pegaVeiculo();
        if ($licenca->veiculo()) {
            $tv = $licenca->pegaReferencia();
            if ($tv) {
                $veiculo = $tv->pegaVeiculo();
            }
        }
        if (!$veiculo) {
            throw new Exception("Nenhum Veiculo Ativo Disponivel!");
        }
        if ($veiculo->placa) {
            $txt_placa = $veiculo->placa;
        }

        $f = $veiculo->getFabricante();
        $txt = array();
        if ($f) {
            $txt_f = $f->toString();
            if ($txt_f) {
                $txt[] = $txt_f;
            }
        }
        if ($veiculo->modelo) {
            $txt[] = $veiculo->modelo;
        }
        if (!empty($txt)) {
            $txt_marca_modelo = implode(" / ", $txt);
        }
        $cor = $veiculo->getCor();
        if ($cor) {
            $cor_t = $cor->toString();
            if ($cor_t) {
                $txt_cor = $cor_t;
            }
        }

        $txt = array();
        if ($veiculo->ano_fabricacao) {
            $txt[] = $veiculo->ano_fabricacao;
        }
        if ($veiculo->ano_modelo) {
            $txt[] = $veiculo->ano_modelo;
        }
        if (!empty($txt)) {
            $txt_ano_fab = implode(" / ", $txt);
        }

        if ($veiculo->chassi) {
            $txt_chassi = $veiculo->chassi;
        }

        $tp_proprietario = $transporte->pegaProprietario();
        if (!$tp_proprietario) {
            throw new Exception("Nenhum Proprietario Disponivel!");
        }
        $tp_pessoa = $tp_proprietario->getPessoa();
        if (!$tp_pessoa) {
            throw new Exception("Nenhum Proprietario Disponivel!!");
        }
        $txt_nome_proprietario = $tp_pessoa->toString();

        $txt = array();
        $vt = $veiculo->getVeiculoTipo();
        if ($vt) {
            $t = $vt->toString();
            if ($t) {
                $txt[] = $t;
            }
        }
        $ve = $veiculo->getVeiculoEspecie();
        if ($ve) {
            $t = $ve->toString();
            if ($t) {
                $txt[] = $t;
            }
        }

        if (!empty($txt)) {
            $txt_tipo_especie = implode(" / ", $txt);
        }
        $txt_emissao = Escola_util::formatData($licenca->data_inicio);
        $txt_validade = Escola_util::formatData($licenca->data_validade);

        $this->AddPage();

        $this->setFont($font_name, "B", 14);
        $this->Image(ROOT_DIR . $path_arquivo . "/imagem_licenca.png", 14, 14, 96, 140, 'PNG');

        $this->setCellHeightRatio(0.8);

        $this->setXY(75, 39);
        $this->MultiCell(20, 20, $txt_licenca_numero, 0, 'R');

        $this->setXY(94.5, 39);
        $this->MultiCell(20, 20, $txt_licenca_ano, 0, 'L');

        $this->setFont($font_name, "B", 8.5);
        $this->setXY(32, 49);
        $this->MultiCell(60, 10, $txt_transporte, 0, 'C', 0, 0, '', '', true, 0, false, true, 10, 'M');

        $this->setXY(19, 65);
        $this->MultiCell(25, 20, $txt_placa, 0, 'C');

        $this->setXY(44.5, 61.5);
        $this->MultiCell(30, 5, strtoupper($txt_marca_modelo), 1, 'C', 0, 0, '', '', true, 0, false, true, 10, 'M');

        $this->setXY(77, 65);
        $this->MultiCell(30, 20, $txt_cor, 0, 'C');

        $this->setXY(15, 78);
        $this->MultiCell(30, 20, $txt_ano_fab, 0, 'C');

        $this->setXY(44, 78);
        $this->MultiCell(35, 20, $txt_chassi, 0, 'C');

        $this->setXY(78, 75);
        $this->MultiCell(30, 6, $txt_tipo_especie, 0, 'C', 0, 0, '', '', true, 0, false, true, 8, 'M');

        $this->setXY(22, 89.5);
        $this->MultiCell(80, 20, $txt_nome_proprietario, 0, 'C');

        $this->setXY(37, 104.5);
        $this->MultiCell(20, 20, $txt_emissao, 0, 'C');

        $this->setXY(65, 104.5);
        $this->MultiCell(20, 20, $txt_validade, 0, 'C');

        $this->lastPage();
        //$this->show();
        $this->download();
        die();

    }

}
