<?php
class Escola_Relatorio_Servico_LT_LMT extends Escola_Relatorio_Servico {
    
    public function __construct() {
        parent::__construct();

        $this->setFilename("relatorio_licenca_moto_taxi_" . date("YmdHis"));
    }

    public function header() {
    }

    public function toPDF() {
        $this->imprimir();
    }

    public function imprimir() {
        $path_arquivo = (new TbSistema())->pegaSistema()->getPathArquivo();
        $ss = $this->registro;
        if (!$ss) {
            throw new Exception("Falha ao Gerar Carteira de Taxi! Nenhum Serviço Encontrado!");
        }

        $transporte = $ss->pegaTransporte();

        if (!$transporte) {
            throw new Exception("Falha, Nenhum Transporte!");
        }

        $tp_proprietario = $transporte->pegaProprietario();
        if (!$tp_proprietario) {
            throw new Exception("Falha, Nenhum Proprietario de Transporte!");
        }

        $pessoa = $tp_proprietario->getPessoa();
        if (!$pessoa) {
            throw new Exception("Falha, Nenhuma Pessoa!");
        }

        if (!$transporte->isVeiculoUnico()) {
            throw new Escola_Exception("Falha, Transporte Indisponivel!");
        }
        $v = $transporte->pegaVeiculo();

        if (!$v) {
            throw new Exception("Falha, Veículo Indisponivel!");
        }

        $tg = $transporte->getTransporteGrupo();
        if (!$tg) {
            throw new Exception("Falha, Nenhum Grupo de Transporte!");
        }
        
        $tpt = $tp_proprietario->getTransportePessoaTipo();
        if (!$tpt) {
            throw new Exception("Falha, Nenhum Tipo!");
        }

        $txt_transporte = utf8_encode($tg->toString());
        $txt_tipo = $tpt->toString();
        $txt_matricula = $transporte->codigo;
        $txt_nome = $pessoa->toString();
        
        $pf = $pessoa->pegaPessoaFilho();
        if (!$pf) {
            throw new Exception("Falha, Pessoa Física Não Disponível!");
        }
        
        $txt_cnh = $txt_cnh_registro = "";
        $pm = $pf->pegaPessoaMotorista();
        if ($pm) {
            $txt_cnh = $pm->cnh_numero;
            $txt_registro = $pm->cnh_registro;
        }

        $txt = array();
        $txt[] = $pf->identidade_numero;
        if ($pf->identidade_orgao_expedidor) {
            $txt[] = $pf->identidade_orgao_expedidor;
        }
        $rg_uf = $pf->pegaIdentidadeUf();
        if ($rg_uf) {
            $txt[] = $rg_uf->sigla;
        }
        $txt_rg = implode(" - ", $txt);
        $txt_cpf = Escola_Util::formatCPF($pf->cpf);

        $licenca = $ss;
        
        $font_name = "Helvetica";
        
        $this->AddPage();
        
        $this->setFont($font_name, "B", 8);
        $this->Image(ROOT_DIR . $path_arquivo . "/imagem_carteira_padrao.png", 14, 14, 102, 130, 'PNG');
        
        //foto da pessoa
        $pf_foto = $pf->getFoto();
        if ($pf_foto) {
            $wi = $pf_foto->getWideImage();
            $txt_image = $wi->asString('png');
            $this->Image('@'.$txt_image, 19, 31, 27, 34, 'PNG');
        }
                
        $this->setXY(49, 33);
        $this->MultiCell(60, 10, $txt_transporte, 0, 'C', 0, 0, '', '', true, 0, false, true, 10, 'M');
        
        $this->setFont($font_name, "B", 7);
        $this->setXY(49, 45);
        $this->MultiCell(24, 20, $txt_tipo, 0, 'C');
        
        $this->setXY(89, 45);
        $this->MultiCell(24, 20, $txt_matricula, 0, 'C');
        
        $this->setXY(49, 53);
        $this->MultiCell(30, 20, $txt_rg, 0, 'C');
        
        $this->setXY(82, 53);
        $this->MultiCell(30, 20, $txt_cpf, 0, 'C');
        
        $this->setXY(49, 60);
        $this->MultiCell(30, 20, $txt_cnh, 0, 'C');
        
        $this->setXY(82, 60);
        $this->MultiCell(30, 20, $txt_registro, 0, 'C');
        
        $this->setXY(20, 68);
        $this->MultiCell(100, 20, $txt_nome, 0, 'C');
        
        // segunda pagina                
        $this->setFont($font_name, "B", 10);
        $this->setXY(15, 81.5);
        $this->MultiCell(100, 20, "CERTIFICADO PARA TRAFEGAR No.: {$licenca->codigo}/{$licenca->ano_referencia}", 0, 'C');

        $this->setFont($font_name, "B", 10);
        $this->setXY(15, 85);
        $this->MultiCell(100, 20, "PERMISSÃO $transporte->codigo", 0, 'C');        
        
        $txt_placa = $v->placa;
        $f = $v->getFabricante();
        $txt = array();
        if ($f) {
            $txt[] = $f->toString();
        }
        $txt[] = $v->modelo;
        $txt_marca_modelo = implode(" / ", $txt);
        
        $txt_cor = "";
        $cor = $v->getCor();
        if ($cor) {
            $txt_cor = $cor->toString();
        }
        $txt = array();
        if ($v->ano_fabricacao) {
            $txt[] = $v->ano_fabricacao;
        }
        if ($v->ano_modelo) {
            $txt[] = $v->ano_modelo;
        }
        $txt_ano_fabricacao_modelo = implode(" / ", $txt);
        
        $this->setFont($font_name, "B", 8);
        $this->setXY(20, 93);
        $this->MultiCell(25, 20, $txt_placa, 0, 'C');
        
        $this->setFont($font_name, "B", 7);
        $this->setXY(47, 90);
        $this->MultiCell(38, 8, $txt_marca_modelo, 0, 'C', 0, 0, '', '', true, 0, false, true, 8, 'M');
        
        $this->setFont($font_name, "B", 8);
        $this->setXY(84, 93);
        $this->MultiCell(30, 10, $txt_cor, 0, 'C');        

        $this->setXY(20, 101.5);
        $this->MultiCell(24, 20, $txt_ano_fabricacao_modelo, 0, 'C');
        
        $this->setXY(48, 101.5);
        $this->MultiCell(35, 20, $v->chassi, 0, 'C');

        //veiculo especie
        $txt_veiculo_especie = "";
        $txt = array();
        $veiculo_tipo = $v->getVeiculoTipo();
        if ($veiculo_tipo) {
            $t = $veiculo_tipo->toString();
            if ($t) {
                $txt[] = $t;
            }
        }
        $veiculo_especie = $v->getVeiculoEspecie();
        if ($veiculo_especie) {
            $t = $veiculo_especie->toString();
            if ($t) {
                $txt[] = $t;
            }
        }
        if (!empty($txt)) {
            $txt_veiculo_especie = implode(" / ", $txt);
        }        
        $this->setFont($font_name, "B", 7);
        $this->setXY(84, 98.5);
        $this->MultiCell(30, 8, $txt_veiculo_especie, 0, 'C', 0, 0, '', '', true, 0, false, true, 8, 'M');

        $tp_perm_pessoa = $tp_proprietario->getPessoa();
        if (!$tp_perm_pessoa) {
            throw new Exception("Falha, Nenhuma Pessoa!");
        }
        $this->setFont($font_name, "B", 9);
        $this->setXY(20, 110);
        $this->MultiCell(90, 20, $tp_perm_pessoa->toString(), 0, 'C');
        
        $this->setXY(38, 117.5);
        $this->MultiCell(20, 20, Escola_Util::formatData($licenca->data_inicio), 0, 'C');        
        
        $this->setXY(70, 117.5);
        $this->MultiCell(20, 20, Escola_Util::formatData($licenca->data_validade), 0, 'C');

        $this->setFont($font_name, "B", 6);
        $this->setXY(17, 122);
        $this->MultiCell(100, 20, utf8_encode("O portador encontra-se cadastrado na STTRANS, para o serviço de Moto-Táxi."), 0, 'L');
        
        $this->setFont($font_name, "B", 6);
        $this->setXY(17, 124.5);
        $this->MultiCell(100, 20, utf8_encode("Em caso de irregularidade deve ser comunicado a STTRANS."), 0, 'L');
        
        $this->setFont($font_name, "B", 6);
        $this->setXY(17, 127);
        $this->MultiCell(100, 20, utf8_encode("Só é válida mediante a apresentação da Carteira Nacional de Habilitação."), 0, 'L');
        
        $this->setFont($font_name, "B", 6);
        $this->setXY(17, 129.5);
        $this->MultiCell(100, 20, utf8_encode("É obrigatório a apresentação desta, quando solicitado pelos Agentes da Autoridade de Trânsito."), 0, 'L');
        
        $this->lastPage();
        //$this->show();        
        $this->download();
        die();
    }

}