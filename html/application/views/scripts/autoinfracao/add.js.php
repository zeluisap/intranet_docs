$(document).ready(function() {
    $("#caracter").blur(function() {
        $(this).val($(this).val().toUpperCase());
        $("#caracter_final").val($(this).val());
    }).blur();
    $("#id_servico_tipo").focus().select();
});