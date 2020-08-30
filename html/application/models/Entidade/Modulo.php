<?php
class Modulo extends Escola_Entidade {

    public function init() {
        parent::init();
        if (!$this->getId()) {
            $this->status = "A";
        }
    }

    public function menu($count = null) {
        $tb = new TbModulo();
        $rg = $tb->pegaMenus($this);
        $mp = array();

        $view = new Zend_View();
        $href = "#";
        if ($this->controller) {
            $controller = $this->controller;
            if ($this->action) {
                $action = $this->action;
            } else {
                $action = "index";
                $acao = $this->pegaAcaoPrincipal();
                if ($acao) {
                    $action = $acao->action;
                }
            }
            $href = $view->url(array("controller" => $controller, "action" => $action), null, true);
        }
        ob_start();
        ?>
        <li<?php ($rg) ? print ' class="dropdown-submenu"' : print ''; ?>>
            <a href="<?php echo $href; ?>" <?php ($this->id_modulo_superior) ? print '' : print 'class="dropdown-toggle" data-toggle="dropdown"' ;?>>
                <?php if ($this->icon) { ?>
                    <i class="<?php echo $this->icon; ?>"></i>
                <?php } ?>
                <span><?php echo $this->descricao; ?></span>
            </a>
            <?php if($rg){ ?>
                <ul class="dropdown-menu">
                    <?php foreach ($rg as $obj) {
                        echo $obj->menu();
                    } ?>
                </ul>
            <?php } ?>
        </li>

        <?php
        $retorno = ob_get_contents();
        ob_end_clean();
        return $retorno;
    }

    public function pegaSuperior() {
        if ($this->id_modulo_superior) {
            $tb = new TbModulo();
            $mods = $tb->find($this->id_modulo_superior);
            if ($mods->count()) {
                return $mods->current();
            }
        }
        return false;
    }

    public function __toString() {
        return $this->toString();
    }

    public function toString() {
        $txt_sup = $this->descricao;
        $sup = $this->pegaSuperior();
        if ($sup) {
            $txt_sup .= " <= " . $sup->toString();
        }
        return $txt_sup;
    }

    public function getErrors() {
        $msgs = array();
        if (empty($this->descricao)) {
            $msgs[] = "CAMPO DESCRIï¿½ï¿½O OBRIGATï¿½RIO!";
        }
        if (count($msgs)) {
            return $msgs;
        }
        return false;
    }

    public function save() {
        if (!$this->id_modulo_superior) {
            $this->id_modulo_superior = null;
        }
        if ($this->ordem) {
            $modulo = Modulo::pegaPorOrdem($this->ordem);
            if ($modulo && ($modulo->getId() != $this->getId())) {
                $modulo->ordem++;
                $modulo->save();
            }
        } else {
            $this->ordem = Modulo::pegaProximaOrdem();
        }
        parent::save();
        $acl = Escola_Acl::getInstance();
        $acl->addModulo($this);
        $acaos = $this->findDependentRowSet("TbAcao");
        if (!count($acaos)) {
            $tb = new TbAcao();
            $row = $tb->createRow();
            $row->id_modulo = $this->id_modulo;
            $row->action = "index";
            $row->descricao = "PRINCIPAL";
            $row->principal = "S";
            $row->save();
        }
    }

    public function pegaProximaOrdem() {
        $db = Zend_Registry::get("db");
        $sql = $db->select();
        $sql->from(array("modulo"), array("max(ordem) as maximo"));
        $rg = $db->fetchAll($sql);
        if ($rg && count($rg)) {
            if ($rg[0]["maximo"]) {
                return $rg[0]["maximo"] + 1;
            }
        }
        return 1;
    }

    public function delete() {
        $rg = $this->findDependentRowSet("TbAcao");
        foreach ($rg as $obj) {
            $obj->delete();
        }
        $sql = "delete from modulo_pacote where id_modulo = {$this->getId()}";
        $db = Zend_Registry::get("db");
        $db->query($sql);
        parent::delete();
    }

    public function listarAcao($dados) {
        $tb = new TbAcao();
        $select = $tb->select();
        $select->where(" id_modulo = {$this->id_modulo} ");
        $select->order("descricao");
        $adapter = new Zend_Paginator_Adapter_DbTableSelect($select);
        $paginator = new Zend_Paginator($adapter);
        if (isset($dados["pagina_atual"]) && $dados["pagina_atual"]) {
            $paginator->setCurrentPageNumber($dados["pagina_atual"]);
        }
        $paginator->setItemCountPerPage(50);
        return $paginator;
    }

    public function subir() {
        $this->mover($this->ordem - 1);
    }

    public function descer() {
        $this->mover($this->ordem + 1);
    }

    protected function mover($ordem) {
        $ordem_antiga = $this->ordem;
        if ($ordem && ($ordem <= TbModulo::pegaUltimaOrdem())) {
            $modulo = $this->getTable()->pegaPorOrdem($ordem);
            if ($modulo) {
                $modulo->ordem = $ordem_antiga;
                $modulo->save();
            }
            $this->ordem = $ordem;
            $this->save();
        }
    }

    public function pegaPorOrdem($ordem) {
        $tb = $this->getTable();
        $rg = $tb->fetchAll("ordem = {$ordem}");
        if ($rg && count($rg)) {
            return $rg->current();
        }
        return false;
    }

    public function pegaAcaoPrincipal() {
        $tb = new TbAcao();
        $sql = $tb->select();
        $sql->where("id_modulo = " . $this->getId());
        $sql->where("principal = 'S'");
        $rg = $tb->fetchAll($sql);
        if ($rg && count($rg)) {
            return $rg->current();
        }
        return false;
    }

    public function pegaPacotes() {
        $tb = new TbPacote();
        $sql = $tb->getSql(array("id_modulo" => $this->getId()));
        die($sql);
    }

    public function mostrarIcone() {
        if ($this->icon) {
            return "<i class='{$this->icon}'></i>";
        }
        return "";
    }

    public function limparPacotes() {
        $db = Zend_Registry::get("db");
        $sql = "delete from modulo_pacote where id_modulo = {$this->getId()}";
        $stmt = $db->query($sql);
    }

    public function ativo() {
        return ($this->status == "A");
    }

    public function inativo() {
        return !$this->ativo();
    }

    public function mostrar_status() {
        if ($this->ativo()) {
            return "ATIVO";
        }
        return "INATIVO";
    }
}