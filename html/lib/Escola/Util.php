<?php

class Escola_Util {

    public static function getBaseUrl() {
        $fc = Zend_Controller_Front::getInstance();
        return $fc->getBaseUrl();
    }

    public static function getBaseUrlPortal() {
        return Escola_Util::getBaseUrl() . "/portal";
    }

    public static function url($dados) {
        $view = new Zend_View();
        return $view->url($dados);
    }

    public static function listarDiaSemana() {
        return array("Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado");
    }

    public static function pegaDiaSemana($data) {
        $semanas = Escola_Util::listarDiaSemana();
        return $semanas[$data->get("e")];
    }

    public static function formatCpf($cpf) {
        $filter = new Zend_Filter_Digits();
        $cpf = $filter->filter($cpf);
        if ($cpf == "") {
            return $cpf;
        } else {
            return preg_replace('/(\d{3})(\d{3})(\d{3})(\d{2})/i', '$1.$2.$3-$4', $cpf);
        }
    }

    public static function formatCep($cep) {
        $filter = new Zend_Filter_Digits();
        $cep = $filter->filter($cep);
        if ($cep == "") {
            return $cep;
        } else {
            return preg_replace('/(\d{2})(\d{3})(\d{3})/i', '$1.$2-$3', $cep);
        }
    }

    public static function formatCnpj($cnpj) {
        $filter = new Zend_Filter_Digits();
        $cnpj = $filter->filter($cnpj);
        if ($cnpj == "") {
            return $cnpj;
        } else {
            return preg_replace('/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/i', '$1.$2.$3/$4-$5', $cnpj);
        }
    }

    public static function formatData($data) {
        if ($data) {
            $data = new Zend_Date($data);
            return $data->get("dd/MM/yyyy");
        }
        return "";
    }

    public static function montaData($data) {
        if (trim($data)) {
            $dt = new Zend_Date($data);
            return $dt->get("y-MM-dd");
        }
        return null;
    }

    public static function getUploadedFile($filename) {
        $upload = new Zend_File_Transfer();
        $files = $upload->getFileInfo($filename);
        //$upload->receive(array($filename));
        if (isset($files[$filename])) {
            $info = $upload->getFileInfo($filename);
            if ($files[$filename]["size"]) {
//	            $files[$filename]["tmp_name"] = $upload->getFileName($filename);
                return $files[$filename];
            }
        }
        return false;
    }

    public static function getUploadedFiles() {
        $uploads = array();
        $upload = new Zend_File_Transfer();
        $files = $upload->getFileInfo();
//        $upload->receive();
        foreach ($files as $filename => $file) {
            if ($upload->isValid($filename)) {
                $uploads[$filename] = $file;
            }
            //$files[$filename]["tmp_name"] = $upload->getFileName($filename);
        }

        return $uploads;
    }

    public static function pegaExtensao($filename) {
        if ($filename) {
            return pathinfo($filename, PATHINFO_EXTENSION);
        }
        return "";
        /*
          $dados = explode(".", $filename);
          if (count($dados) > 1) {
          return $dados[count($dados) - 1];
          }
          return "";
         */
    }

    public static function maiuscula($texto) {
        $filter = new Zend_Filter_StringToUpper();
        return $filter->filter($texto);
    }

    public static function minuscula($texto) {
        $filter = new Zend_Filter_StringToLower();
        return $filter->filter($texto);
    }

    public static function validaEmail($email) {
        $filter = new Zend_Validate_EmailAddress();
        return $filter->isValid($email);
    }

    public static function validaData($data) {
        $filter = new Zend_Validate_Date();
        return $filter->isValid($data);
    }

    public static function carregaArquivo($filename) {
        $handle = fopen($filename, "r");
        if ($handle) {
            $conteudos = array();
            while (($data = fgets($handle)) !== FALSE) {
                $conteudos[] = $data;
            }
            fclose($handle);
            if (count($conteudos)) {
                return $conteudos;
            }
        }
        return false;
    }

    public static function carregaArquivoDados($filename, $separador = ";") {
        $handle = fopen($filename, "r");
        if ($handle) {
            $titulos = $data = fgetcsv($handle, 1000, $separador);
            $conteudos = array();
            while (($data = fgetcsv($handle, 1000, $separador)) !== FALSE) {
                $tmp = array();
                for ($y = 0; $y < count($titulos); $y++) {
                    $tmp[$titulos[$y]] = str_replace("\"", "", $data[$y]);
                }
                $conteudos[] = $tmp;
            }
            if (count($conteudos)) {
                return $conteudos;
            }
        }
        fclose($handle);
        return false;
    }

    public static function zero($numero, $tamanho) {
        if ($numero) {
            return str_pad($numero, $tamanho, "0", STR_PAD_LEFT);
        }
        return "";
    }

    public static function validaCPF($cpf) {
        $val = new Escola_Validate_Cpf();
        return $val->isValid($cpf);
    }

    public function mostrarTamanho($tamanho) {
        if ($tamanho) {
            $tipos = array("Bytes", "KB", "MB", "GB");
            foreach ($tipos as $tipo) {
                if ($tamanho < 1024) {
                    return $tamanho . " {$tipo}";
                }
                $tamanho = (int) ($tamanho / 1024);
            }
            return $this->tamanho;
        }
        return "";
    }

    public function limparNumero($numero) {
        $filter = new Zend_Filter_Digits();
        return $filter->filter($numero);
    }

    public static function pegaMeses() {
        return array(1 => "Janeiro",
            2 => "Fevereiro",
            3 => "Março",
            4 => "Abril",
            5 => "Maio",
            6 => "Junho",
            7 => "Julho",
            8 => "Agosto",
            9 => "Setembro",
            10 => "Outubro",
            11 => "Novembro",
            12 => "Dezembro");
    }

    public static function pegaMes($mes) {
        $meses = Escola_Util::pegaMeses();
        if (isset($meses[$mes])) {
            return $meses[$mes];
        }
        return "";
    }

    public static function number_format($valor) {
        $valor = round($valor, 2);
        $curr = Zend_Locale_Format::toNumber($valor, array("number_format" => "#,##0.00"));
        return $curr;
    }

    public static function montaNumero($numero) {
        if ($numero) {
            $numero = str_replace('.', '', $numero);
            $numero = str_replace(',', '.', $numero);
        }
        return $numero;
    }

    public static function consulta_ibase($sql) {
        $dbibase = Zend_Registry::get("dbibase");

        $sth = ibase_query($dbibase, $sql);
        $items = array();
        while ($row = ibase_fetch_object($sth)) {
            $items[] = $row;
        }
        ibase_free_result($sth);
        if (count($items)) {
            return $items;
        }
        return false;
    }

    public static function limpaNumero($numero) {
        $filter = new Zend_Filter_Digits();
        return $filter->filter($numero);
    }

    /**
     * isCnpjValid
     *
     * Esta função testa se um Cnpj é valido ou não. 
     *
     * @author	Raoni Botelho Sporteman <raonibs@gmail.com>
     * @version	1.0 Debugada em 27/09/2011 no PHP 5.3.8
     * @param	string		$cnpj			Guarda o Cnpj como ele foi digitado pelo cliente
     * @param	array		$num			Guarda apenas os números do Cnpj
     * @param	boolean		$isCnpjValid	Guarda o retorno da função
     * @param	int			$multiplica 	Auxilia no Calculo dos Dígitos verificadores
     * @param	int			$soma			Auxilia no Calculo dos Dígitos verificadores
     * @param	int			$resto			Auxilia no Calculo dos Dígitos verificadores
     * @param	int			$dg				Dígito verificador
     * @return	boolean						"true" se o Cnpj é válido ou "false" caso o contrário
     *
     */
    public static function isCnpjValid($cnpj) {
        //Etapa 1: Cria um array com apenas os digitos numéricos, isso permite receber o cnpj em diferentes formatos como "00.000.000/0000-00", "00000000000000", "00 000 000 0000 00" etc...
        $j = 0;
        for ($i = 0; $i < (strlen($cnpj)); $i++) {
            if (is_numeric($cnpj[$i])) {
                $num[$j] = $cnpj[$i];
                $j++;
            }
        }
        //Etapa 2: Conta os dígitos, um Cnpj válido possui 14 dígitos numéricos.
        if (count($num) != 14) {
            $isCnpjValid = false;
            return false;
        }
        //Etapa 3: O número 00000000000 embora não seja um cnpj real resultaria um cnpj válido após o calculo dos dígitos verificares e por isso precisa ser filtradas nesta etapa.
        if ($num[0] == 0 && $num[1] == 0 && $num[2] == 0 && $num[3] == 0 && $num[4] == 0 && $num[5] == 0 && $num[6] == 0 && $num[7] == 0 && $num[8] == 0 && $num[9] == 0 && $num[10] == 0 && $num[11] == 0) {
            $isCnpjValid = false;
        }
        //Etapa 4: Calcula e compara o primeiro dígito verificador.
        else {
            $j = 5;
            for ($i = 0; $i < 4; $i++) {
                $multiplica[$i] = $num[$i] * $j;
                $j--;
            }
            $soma = array_sum($multiplica);
            $j = 9;
            for ($i = 4; $i < 12; $i++) {
                $multiplica[$i] = $num[$i] * $j;
                $j--;
            }
            $soma = array_sum($multiplica);
            $resto = $soma % 11;
            if ($resto < 2) {
                $dg = 0;
            } else {
                $dg = 11 - $resto;
            }
            if ($dg != $num[12]) {
                $isCnpjValid = false;
            }
        }
        //Etapa 5: Calcula e compara o segundo dígito verificador.
        if (!isset($isCnpjValid)) {
            $j = 6;
            for ($i = 0; $i < 5; $i++) {
                $multiplica[$i] = $num[$i] * $j;
                $j--;
            }
            $soma = array_sum($multiplica);
            $j = 9;
            for ($i = 5; $i < 13; $i++) {
                $multiplica[$i] = $num[$i] * $j;
                $j--;
            }
            $soma = array_sum($multiplica);
            $resto = $soma % 11;
            if ($resto < 2) {
                $dg = 0;
            } else {
                $dg = 11 - $resto;
            }
            if ($dg != $num[13]) {
                $isCnpjValid = false;
            } else {
                $isCnpjValid = true;
            }
        }
        //Trecho usado para depurar erros.
        /*
          if($isCnpjValid==true)
          {
          echo "<p><font color=\"GREEN\">Cnpj é Válido</font></p>";
          }
          if($isCnpjValid==false)
          {
          echo "<p><font color=\"RED\">Cnpj Inválido</font></p>";
          }
         */
        //Etapa 6: Retorna o Resultado em um valor booleano.
        return $isCnpjValid;
    }

    function agrupaTransporte($stmt) {
        $db = Zend_Registry::get("db");
        $tb_ss = new TbServicoSolicitacao();
        if ($stmt && $stmt->rowCount()) {
            while ($obj = $stmt->fetch(Zend_Db::FETCH_OBJ)) {
                $db->beginTransaction();
                try {
                    $transportes = array();
                    $sql1 = "select a.*
                            from transporte a, transporte_pessoa b
                            where (a.id_transporte = b.id_transporte)
                            and (a.id_transporte_grupo = {$obj->id_transporte_grupo})
                            and (b.id_pessoa = {$obj->id_pessoa})
                            order by a.id_transporte";
                    $stmt1 = $db->query($sql1);
                    if ($stmt1 && $stmt1->rowCount()) {
                        while ($obj1 = $stmt1->fetch(Zend_Db::FETCH_OBJ)) {
                            $transportes[] = $obj1;
                        }
                    }
                    if (count($transportes) > 1) {
                        $tra_pessoa = array();
                        $transporte_principal = $transportes[0];
                        unset($transportes[0]);
                        $tra_principal = TbTransporte::pegaPorId($transporte_principal->id_transporte);

                        $tvs = $tra_principal->findDependentRowset("TbTransporteVeiculo");
                        $sss = $tb_ss->listar(array("id_transporte" => $transporte_principal->id_transporte));
                        if ($sss && count($sss)) {
                            foreach ($sss as $ss) {
                                if ($tvs && (count($tvs) == 1)) {
                                    $tv = $tvs->current();
                                    $stg = $ss->findParentRow("TbServicoTransporteGrupo");
                                    if ($stg) {
                                        $servico = $stg->findParentRow("TbServico");
                                        if ($servico) {
                                            $sr = $servico->findParentRow("TbServicoReferencia");
                                            if ($sr && $sr->veiculo()) {
                                                $ss->tipo = "TV";
                                                $ss->chave = $tv->getId();
                                            }
                                        }
                                    }
                                }
                                if ($ss->tipo == "TR") {
                                    $ss->chave = $transporte_principal->id_transporte;
                                }
                                $ss->id_transporte = $transporte_principal->id_transporte;
                                $ss->save();
                            }
                        }

                        $tps = $tra_principal->findDependentRowset("TbTransportePessoa");
                        if ($tps && count($tps)) {
                            foreach ($tps as $tp) {
                                $tra_pessoa[] = $tp->id_pessoa;
                            }
                        }
                        foreach ($transportes as $transporte) {
                            $tra = TbTransporte::pegaPorId($transporte->id_transporte);
                            if ($tra) {
                                $tvs = $tra->findDependentRowset("TbTransporteVeiculo");
                                $sss = $tb_ss->listar(array("id_transporte" => $transporte->id_transporte));
                                if ($sss && count($sss)) {
                                    foreach ($sss as $ss) {
                                        if ($tvs && (count($tvs) == 1)) {
                                            $tv = $tvs->current();
                                            $stg = $ss->findParentRow("TbServicoTransporteGrupo");
                                            if ($stg) {
                                                $servico = $stg->findParentRow("TbServico");
                                                if ($servico) {
                                                    $sr = $servico->findParentRow("TbServicoReferencia");
                                                    if ($sr && $sr->veiculo()) {
                                                        $ss->tipo = "TV";
                                                        $ss->chave = $tv->getId();
                                                    }
                                                }
                                            }
                                        }
                                        if ($ss->tipo == "TR") {
                                            $ss->chave = $transporte_principal->id_transporte;
                                        }
                                        $ss->id_transporte = $transporte_principal->id_transporte;
                                        $ss->save();
                                    }
                                }
                                if ($tvs && count($tvs)) {
                                    foreach ($tvs as $tv) {
                                        $tv->id_transporte = $transporte_principal->id_transporte;
                                        $errors = $tv->getErrors();
                                        if (!$errors) {
                                            $tv->save();
                                        }
                                    }
                                }
                            }
                            $tps = $tra->findDependentRowset("TbTransportePessoa");
                            if ($tps && count($tps)) {
                                foreach ($tps as $tp) {
                                    if (!in_array($tp->id_pessoa, $tra_pessoa)) {
                                        $tp->id_transporte = $transporte_principal->id_transporte;
                                        $errors = $tp->getErrors();
                                        if (!$errors) {
                                            $tp->save();
                                        }
                                    }
                                }
                            }
                            $derrors = $tra->getDeleteErrors();
                            if (!$derrors) {
                                $tra->delete();
                            } else {
                                Zend_Debug::dump($derrors);
                                die();
                            }
                        }
                    }
                    $db->commit();
                } catch (Exception $e) {
                    $db->rollBack();
                    die($e->getMessage());
                }
            }
        }
    }

    public function format_moeda($valor) {
        $items = array();
        if (!is_numeric($valor)) {
            $valor = 0;
        }
        $tb = new TbMoeda();
        $moeda = $tb->pega_padrao();
        if ($moeda) {
            $items[] = $moeda->simbolo;
        }
        $items[] = Escola_Util::number_format($valor);
        return implode(" ", $items);
    }

    function validaHora($hora) {
        if ($hora) {
            $array_hora = explode(":", $hora);
            if (count($array_hora) == 3) {
                $hour = $array_hora[0];
                $min = $array_hora[1];
                $sec = $array_hora[2];
                if (!is_numeric($hour) || ($hour < 0) || ($hour > 23)) {
                    return false;
                }
                if (!is_numeric($min) || ($min < 0) || ($min > 59)) {
                    return false;
                }
                if (!is_numeric($sec) || ($sec < 0) || ($sec > 59)) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public static function carregaArquivoDadosExcel($filename) {

        include_once ("PHPExcel/Classes/PHPExcel.php");

        $inputFileType = PHPExcel_IOFactory::identify($filename);

        $objReader = PHPExcel_IOFactory::createReader($inputFileType);

        $objPHPExcel = $objReader->load($filename);

        $qtd = $objPHPExcel->getSheetCount();

        $retorno = array();

        for ($i = 0; $i < $qtd; $i++) {
            $planilha = $objPHPExcel->getSheet($i);
            $highestRow = $planilha->getHighestRow();

            $retorno[$planilha->getTitle()] = array();
            $titulos = array();

            $coluna = 0;
            do {
                $titulo = trim($planilha->getCellByColumnAndRow($coluna, 1)->getValue());
                if (!$titulo) {
                    break;
                }
                $titulos[$coluna] = $titulo;
                $coluna++;
            } while ($titulo);

            for ($linha = 2; $linha <= $highestRow; $linha++) {

                $items = array();
                for ($coluna = 0; $coluna < count($titulos); $coluna++) {

                    if (!isset($titulos[$coluna])) {
                        throw new Exception("Nenhum Título para a Coluna: {$coluna}.");
                    }

                    $items[$titulos[$coluna]] = $planilha->getCellByColumnAndRow($coluna, $linha)->getValue();
                }

                $retorno[$planilha->getTitle()][] = $items;
            }
        }

        //$retorno = utf8_decode_array($retorno);

        return $retorno;
    }

    public static function importa_excel($filename) {

        //echo " ... Processando Planilha ... " . PHP_EOL . PHP_EOL;

        if (!file_exists($filename)) {
            return;
        }

        $planilhas = self::carregaArquivoDadosExcel($filename);

        if (count($planilhas) == 1) {
            return current($planilhas);
        }
        
        $idc = 0;
        while (!$idc) {
            $contador = 0;
            $dados_filtro = array();
            foreach ($planilhas as $chave => $valor) {
                $contador++;

                $dados_filtro[$contador] = $chave;

                echo "{$contador} - {$chave}." . PHP_EOL;
            }
            echo "Qual Planilha Deseja Trabalhar?: ";
            $idc = trim(fgets(STDIN));

            if (!$idc) {
                continue;
            }

            if (!array_key_exists($idc, $dados_filtro)) {
                continue;
            }

            return $planilhas[$dados_filtro[$idc]];
        }

        return false;
    }

}
