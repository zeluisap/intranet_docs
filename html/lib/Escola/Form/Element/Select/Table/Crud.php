<?php
class Escola_Form_Element_Select_Table_Crud extends Escola_Form_Element_Select_Table {
	
	public function render(Zend_View_Interface $view = null) {
		ob_start();
		$this->_carregaDados();
		$options = $this->getMultiOptions();        
?>
<div class="form-group">
    <label for="<?php echo $this->getName(); ?>" ><?php echo $this->getLabel(); ?></label>
    <div id="linha_<?php echo $this->getName(); ?>" class="input-group">
        <select name="<?php echo $this->getName(); ?>" id="<?php echo $this->getName(); ?>" class="<?php echo $this->getAttrib("class"); ?>">
            <?php
            if (count($options)) {
                foreach ($options as $k => $v) {
                    $select = "";
                    if ($this->getValue() == $k) {
                        $select = " selected ";
                    }
                    ?>
                    <option value="<?php echo $k; ?>" <?php echo $select; ?>><?php echo $v; ?></option>
                <?php }} ?>
        </select>
        <span class="input-group-btn">
                    <a href="#" id="link_janela_crud_<?php echo $this->getName(); ?>" class="btn btn-white">
                        <i class="icon-plus-sign"></i>
                    </a>
                </span>
    </div>
    <script type="text/javascript">
        var <?php echo $this->getName(); ?>_id_default = "<?php echo $this->getValue(); ?>";
        $(document).ready(function() {
            $("#link_janela_crud_<?php echo $this->getName(); ?>").click(function(event) {
                event.preventDefault();
                $("#janela_crud_<?php echo $this->getName(); ?> #msg_erro_crud").hide();
                $("#janela_crud_<?php echo $this->getName(); ?>").modal("show");
                $("#janela_crud_<?php echo $this->getName(); ?>").on("shown", function() {
                    $("#janela_crud_<?php echo $this->getName(); ?>").find("input, select").first().focus().select();
                });
                $("#janela_crud_<?php echo $this->getName(); ?> .crud_cadastro").each(function() {
                    $(this).val("");
                });
            });
        });
    </script>
</div>
<?php
        echo $this->janela_modal($view);
		$res = ob_get_contents();
		ob_end_clean();
		return $res;
	}
	
	public function janela_modal(Zend_View_Interface $view = null) {
		return "";
	}
}