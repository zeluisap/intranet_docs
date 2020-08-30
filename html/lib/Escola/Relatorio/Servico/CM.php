<?php

class Escola_Relatorio_Servico_CM extends Escola_Relatorio_Servico {

    public function __construct() {
        parent::__construct();
        $this->setFilename("relatorio_carteira_motorista");
    }

    public function header() {
        
    }

    public function validarEmitir() {
        $p_errors = parent::validarEmitir();
        $errors = array();
        if ($this->registro->motorista()) {
            $motorista = $this->registro->pegaReferencia();
            if (!$motorista) {
                $errors[] = "NENHUM MOTORISTA VINCULADO!";
            }
        } else {
            $transporte = $this->registro->pegaTransporte();
            if (!$transporte) {
                $errors[] = "NENHUM TRANSPORTE VINCULADO!";
            } else {
                $pessoa = false;
                if ($this->registro->pessoa()) {
                    $tp = $this->registro->pegaReferencia();
                    if ($tp) {
                        $pessoa = $tp->findParentRow("TbPessoa");
                    }
                }
                if (!$pessoa) {
                    $errors[] = "TRANSPORTE Nï¿½O POSSUI PESSOA VINCULADA!";
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
        $tp = $this->registro->pegaReferencia();
        if (!$tp) {
            return false;
        }
        
        $tp->toPDF($this->registro);
    }

    public function css() {
        ?>
        <style type="text/css">
            body, td {
                font-size: 8pt;
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
            .font_10 {
                font-size: 10pt;
            }
            .td_foto {
                border: 1px solid #000;
                height: 80px;
            }
        </style>
        <?php

    }

}
