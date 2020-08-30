<?php

class Escola_Relatorio_Servico_CP_PR extends Escola_Relatorio_Servico {
    
    private $transporte_pessoa;

    public function __construct($tr) {
        parent::__construct();
        
        $this->transporte_pessoa = $tr;
        $this->setFilename("relatorio_carteira_taxi_permissionario_" . date("YmdHis"));
    }

    public function header() {
    }

    public function imprimir() {
        $path_arquivo = (new TbSistema())->pegaSistema()->getPathArquivo();
        $tp = $this->transporte_pessoa;
        if (!$tp) {
            throw new Exception("Falha, Nenhuma Pessoa!");
        }
        
        $transporte = $tp->getTransporte();
        if (!$transporte) {
            throw new Exception("Falha, Nenhum Transporte!");
        }
        
        $tp_proprietario = $transporte->pegaProprietario();        
        if (!$tp_proprietario) {
            throw new Exception("Falha, Nenhum Proprietario de Transporte!");
        }
        
        if (!$transporte->isVeiculoUnico()) {
            throw new Exception("Falha, Transporte Indisponivel!");
        }
        
        $v = $transporte->pegaVeiculo();
        if (!$v) {
            throw new Exception("Falha, Veï¿½culo Indisponivel!");
        }
        
        $licenca = $transporte->pega_licenca_trafego_ativa();
        if (!$licenca) {
            throw new Exception("Falha, Nenhuma Licenca Ativa!");
        }        
        
        $tg = $transporte->getTransporteGrupo();
        if (!$tg) {
            throw new Exception("Falha, Nenhum Grupo de Transporte!");
        }
        
        $pessoa = $tp->getPessoa();
        if (!$pessoa) {
            throw new Exception("Falha, Nenhuma Pessoa!");
        }
        
        $tpt = $tp->getTransportePessoaTipo();
        if (!$tpt) {
            throw new Exception("Falha, Nenhum Tipo!");
        }
        
        $txt_transporte = $tg->toString();
        $txt_tipo = $tpt->toString();
        $txt_matricula = $transporte->codigo;
        $txt_nome = $pessoa->toString();
        
        $pf = $pessoa->pegaPessoaFilho();
        if (!$pf) {
            throw new Exception("Falha, Pessoa Fï¿½sica Nï¿½o Disponï¿½vel!");
        }
        
        $txt_cnh = $txt_cnh_registro = "";
        $pm = $pf->pegaPessoaMotorista();
        if ($pm) {
            $txt_cnh = $pm->cnh_numero;
            $txt_registro = $pm->cnh_registro;
        }
        
        $txt_rg = $pf->identidade_numero;
        $txt_cpf = Escola_Util::formatCPF($pf->cpf);
        
        $font_name = "Helvetica";
        
        $this->AddPage();
        
        $this->setFont($font_name, "B", 8);
        $this->Image(ROOT_DIR . $path_arquivo . "/imagem_carteira_permissionario.png", 14, 14, 102, 130, 'PNG');
        
        //foto da pessoa
        $pf_foto = $pf->getFoto();
        if ($pf_foto) {
            $this->Image($pf_foto->pegaNomeCompleto(), 19, 31, 27, 34, 'PNG');
        }
        
        $this->setXY(49, 33);
        $this->MultiCell(60, 10, $txt_transporte, 0, 'L', 0, 0, '', '', true, 0, false, true, 10, 'M');
        
        $this->setFont($font_name, "B", 7);
        $this->setXY(49, 45);
        $this->MultiCell(60, 20, $txt_tipo, 0, 'L');
        
        $this->setXY(89, 45);
        $this->MultiCell(60, 20, $txt_matricula, 0, 'L');
        
        $this->setXY(49, 53);
        $this->MultiCell(60, 20, $txt_rg, 0, 'L');
        
        $this->setXY(82, 53);
        $this->MultiCell(60, 20, $txt_cpf, 0, 'L');
        
        $this->setXY(49, 60);
        $this->MultiCell(60, 20, $txt_cnh, 0, 'L');
        
        $this->setXY(82, 60);
        $this->MultiCell(60, 20, $txt_registro, 0, 'L');
        
        $this->setXY(20, 68);
        $this->MultiCell(60, 20, $txt_nome, 0, 'L');
        
        // segunda pagina                
        $this->setFont($font_name, "B", 9);
        $this->setXY(88, 82);
        $this->MultiCell(10, 20, $licenca->codigo, 0, 'R');

        $this->setXY(100, 82);
        $this->MultiCell(60, 20, $licenca->ano_referencia, 0, 'L');        

        $this->setFont($font_name, "B", 10);
        $this->setXY(80, 85);
        $this->MultiCell(60, 20, $transporte->codigo, 0, 'L');        
        
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
        
        $this->setFont($font_name, "B", 12);
        $this->setXY(20, 92);
        $this->MultiCell(60, 20, $txt_placa, 0, 'L');
        
        $this->setFont($font_name, "B", 7);
        $this->setXY(47, 90);
        $this->MultiCell(38, 8, $txt_marca_modelo, 0, 'L', 0, 0, '', '', true, 0, false, true, 8, 'M');
        
        $this->setFont($font_name, "B", 10);
        $this->setXY(84, 92);
        $this->MultiCell(38, 10, $txt_cor, 0, 'L');        

        $this->setFont($font_name, "B", 10);
        $this->setXY(20, 101);
        $this->MultiCell(60, 20, $txt_ano_fabricacao_modelo, 0, 'L');
        
        $this->setFont(Helvetica, "B", 9);
        $this->setXY(48, 101);
        $this->MultiCell(60, 20, $v->chassi, 0, 'L');

        //veiculo categoria
        $txt_veiculo_categoria = "";
        $txt = array();
        $veiculo_tipo = $v->getVeiculoTipo();
        if ($veiculo_tipo) {
            $t = $veiculo_tipo->toString();
            if ($t) {
                $txt[] = $t;
            }
        }
        $veiculo_categoria = $v->getVeiculoCategoria();
        if ($veiculo_categoria) {
            $t = $veiculo_categoria->toString();
            if ($t) {
                $txt[] = $t;
            }
        }
        if (!empty($txt)) {
            $txt_veiculo_categoria = implode(" / ", $txt);
        }        
        $this->setFont($font_name, "B", 7);
        $this->setXY(84, 98.5);
        $this->MultiCell(30, 8, $txt_veiculo_categoria, 0, 'L', 0, 0, '', '', true, 0, false, true, 8, 'M');

        $tp_perm_pessoa = $v->getProprietario();
        if (!$tp_perm_pessoa) {
            $tp_perm_pessoa = $tp_proprietario->getPessoa();
            if (!$tp_perm_pessoa) {
                throw new Exception("Falha, Nenhuma Pessoa!");
            }
        }

        $this->setFont($font_name, "B", 9);
        $this->setXY(20, 109);
        $this->MultiCell(60, 20, $tp_perm_pessoa->toString(), 0, 'L');
        
        $this->setXY(38, 117);
        $this->MultiCell(60, 20, Escola_Util::formatData($licenca->data_inicio), 0, 'L');        
        
        $this->setXY(70, 117);
        $this->MultiCell(60, 20, Escola_Util::formatData($licenca->data_validade), 0, 'L');        
        
        $this->lastPage();
        //$this->show();        
        $this->download();
        die();
    }

}
