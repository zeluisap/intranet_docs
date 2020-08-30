<?php 
class Sistema extends Zend_Db_Table_Row_Abstract {
    
    public function init() {
        parent::init();
        if (!$this->id_sistema) {
            $tb = new TbPortalStatus();
            $ps = $tb->getPorChave("A");
            if ($ps) {
                $this->id_portal_status = $ps->getId();
            }
        }
    }
	
	public function getErrors() {
		$msgs = array();
		if (empty($this->sigla)) {
			$msgs[] = "CAMPO SIGLA OBRIGATÓRIA!";
		}
		if (empty($this->descricao)) {
			$msgs[] = "CAMPO DESCRIÇÃO OBRIGATÓRIA!";
		}
		$validate = new Zend_Validate();
		$validate->addValidator(new Zend_Validate_EmailAddress());
		if (!$validate->isValid($this->email)) {
			$msgs[] = "E-MAIL INVÁLIDO!";
		}
		if (count($msgs)) {
			return $msgs;
		}
		return false;
	}
	
	public function setFromArray(array $array) {
		if (isset($array["sigla"])) {
			$array["sigla"] = strtoupper($array["sigla"]);
		}
		parent::setFromArray($array);
	}
	
	public function __toString() {
		return $this->descricao . " - " . $this->sigla;
	}
	
	public function toString() {
		return $this->__toString();
	}
	
	public function portal_ativo() {
		$ps = $this->findParentRow("TbPortalStatus");
		if ($ps) {
			return $ps->ativo();
		}
		return true;
	}

    /**
     * @return string
     * @throws Zend_Exception
     */
	public function getPathArquivo() {

        $default_path = "application/file";

        $config = Zend_Registry::get("config");
        if (!$config) {
            return $default_path;
        }

        $path = $config->sistema->file->path;

        if (!$path) {
            return $default_path;
        }

        return $path;
    }
}