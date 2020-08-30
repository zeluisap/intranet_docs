<?php 

class Escola_Form_Element_Icone extends Zend_Form_Element_Text {

public function render(Zend_View_Interface $view = null) {
    ob_start();
?>
<style type="text/css">
.btn-icone {
    width: 40px;
    padding: 3px;
    margin: 2px;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
$(".icone-texto").keyup(function() {
    var ctrl_icone = $("#icone-texto-button-icon");
    ctrl_icone.removeClass();
    ctrl_icone.addClass(".icone-texto-button-icon");
    if ($(this).val().length) {
        ctrl_icone.addClass($(this).val());
    }
});
$(".btn-icone").click(function(evt) {
    evt.preventDefault();
    $(".icone-texto").val($(this).attr("id"));
    $("#icone-texto-button-icon").removeClass().addClass(".icone-texto-button-icon").addClass($(this).attr("id"));
    $("#myModal<?php echo $this->getId(); ?>").modal("hide");
});
});
</script>

<div class="modal fade" id="myModal<?php echo $this->getId(); ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Selecionar Ícone</h4>
      </div>
      <div class="modal-body">
        <?php
        $tb = new TbIcone();
        $icones =  $tb->listar();
        foreach ($icones as $icone) {
        ?>
            <button class="btn btn-icone btn-default" id="<?php echo $icone->descricao; ?>"><i class="<?php echo $icone->descricao; ?> icon-large"></i></button>
        <?php } ?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-white" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>
<div class="form-group">
    <label for="icon" class="control-label">Ícone:</label>
    <div class="input-group">
        <input type="text" name="<?php echo $this->getName(); ?>" id="<?php echo $this->getId(); ?>" maxlength="60" value="<?php echo $this->getValue(); ?>" class="icone-texto form-control" />
        <span class="input-group-btn">
            <button class="btn btn-white" type="button"  data-toggle="modal" title="Localizar Ícone" data-target="#myModal<?php echo $this->getId(); ?>"><i class="<?php echo $this->getValue(); ?> icone-texto-button-icon" id="icone-texto-button-icon">&nbsp;</i></button>
        </span>
    </div>
</div>

<?php
        $html = ob_get_contents();
        ob_end_clean();
        return $html;
    }
}