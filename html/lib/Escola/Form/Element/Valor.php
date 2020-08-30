<?php 
class Escola_Form_Element_Valor extends Zend_Form_Element_Text {
    
    protected $moeda = false;
    
    public function set_moeda(Moeda $moeda) {
        $this->moeda = $moeda;
    }
    
    public function render(Zend_View_Interface $view = null) {
        $moeda = $this->moeda;
        if (!$moeda) {
            $tb = new TbMoeda();
            $moeda = $tb->pega_padrao();
        }
        ob_start();
        $class = "moeda input-medium " . $this->getAttrib("class");
?>
        <label for="valor"><?php echo $this->getLabel(); ?></label>
        <div class="input-group" id="linha_<?php echo $this->getId(); ?>">
            <span class="input-group-btn "><a href="#" class="btn btn-white"><?php echo ($moeda) ? $moeda->simbolo: "R$"; ?></a></span>
            <input class="form-control" type="text" name="<?php echo $this->getName(); ?>" id="<?php echo $this->getId(); ?>" class="<?php echo $class; ?>" value="<?php echo Escola_Util::number_format($this->getValue()); ?>" />
        </div>
<?php
        $html = ob_get_contents();
        ob_end_clean();
        return $html;
    }
}