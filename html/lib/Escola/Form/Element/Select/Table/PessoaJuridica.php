<?php
class Escola_Form_Element_Select_Table_PessoaJuridica extends Escola_Form_Element_Select_Table {
    
    protected $hab_adicionar = true;
    
    public function get_hab_adicionar() {
        return $this->hab_adicionar;
    }
    
    public function set_hab_adicionar($hab_adicionar) {
        $this->hab_adicionar = $hab_adicionar;
    }
    
    public function init() {
        parent::init();
        $this->setPkName("id_pessoa_juridica");
        $this->setModel("TbPessoaJuridica");
    }
	
	public function render(Zend_View_Interface $view = null) {
        $pj = TbPessoaJuridica::pegaPorId($this->getValue());
        $txt_pj = "";
        if ($pj) {
            $txt_pj = $pj->toString();
        }
        ob_start();
?>
<script type="text/javascript">
var pjs = [];
$(document).ready(function() {
    $(".link_<?php echo $this->getName(); ?>").click(function(event) {
        event.preventDefault();
        $("#janela_<?php echo $this->getName(); ?>").modal("show");
    });
    $("#janela_<?php echo $this->getName(); ?>").on("show", function() {
        $("#janela_<?php echo $this->getName(); ?> .filtro, #<?php echo $this->getName(); ?>_pagina").val("");
        <?php echo $this->getName(); ?>_atualiza_pj();
    });
    $("#janela_<?php echo $this->getName(); ?>").keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            <?php echo $this->getName(); ?>_atualiza_pj();
        }
    });
    $("#janela_<?php echo $this->getName(); ?> #btn_procurar").click(function() {
        <?php echo $this->getName(); ?>_atualiza_pj();
    });
    $("#janela_<?php echo $this->getName(); ?> #btn_limpar_filtro").click(function() {
        $("#janela_<?php echo $this->getName(); ?> .filtro, #<?php echo $this->getName(); ?>_pagina").val("");
        <?php echo $this->getName(); ?>_atualiza_pj();
    });
<?php if ($this->hab_adicionar) { ?>
    $("#janela_add_<?php echo $this->getName(); ?>").on("show", function() {
        $("#janela_add_<?php echo $this->getName(); ?> .alert").hide();
    });
    $("#janela_add_<?php echo $this->getName(); ?>").on("shown", function() {
        $("#janela_add_<?php echo $this->getName(); ?> .field").val("");
        $("#<?php echo $this->getName(); ?>_add_cnpj").focus();
    });
    $("#janela_add_<?php echo $this->getName(); ?>").keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            <?php echo $this->getName(); ?>_salvar_pj();
        }
    });
    $("#janela_<?php echo $this->getName(); ?> #btn_add").click(function() {
        $("#janela_<?php echo $this->getName(); ?>").modal("hide");
        $("#janela_add_<?php echo $this->getName(); ?>").modal("show");
    });
    $("#janela_add_<?php echo $this->getName(); ?> #btn_salvar").click(function() {
        <?php echo $this->getName(); ?>_salvar_pj();
    });
<?php } ?>
})

function <?php echo $this->getName(); ?>_atualiza_pj() {
    $("#<?php echo $this->getName(); ?>_resposta .corpo_destino tr, .<?php echo $this->getName(); ?>_paginacao").remove();
    $("#<?php echo $this->getName(); ?>_resposta").hide();
    var ajax_obj = $.ajax({
        "url" : "<?php echo Escola_Util::getBaseUrl(); ?>/pessoa/pjlistarporpagina/format/json/",
        "type" : "POST",
        "data" : { "filtro_cnpj": $("#<?php echo $this->getName(); ?>_cnpj").val(),
                   "filtro_nome": $("#<?php echo $this->getName(); ?>_nome").val(),
                   "pagina_atual": $("#<?php echo $this->getName(); ?>_pagina").val(),
                   "qtd_por_pagina": 20 },
        "success" : function(result) {
            pjs = [];
            if (result.items && result.items.length) {
                for (var i = 0; i < result.items.length; i++) {
                    var item = result.items[i];
                    pjs[i] = item;
                    var tr = $('<tr class="linha_resultado"></tr>');
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.id + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.cnpj + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.sigla + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.razao_social + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.nome_fantasia + '</a></td>').appendTo(tr);
                    tr.appendTo($("#<?php echo $this->getName(); ?>_resposta .corpo_destino"));
                }
                $(".link_destino").click(
                    function(event) {
                        event.preventDefault();
                        $("#show_<?php echo $this->getName(); ?>").val(pjs[$(this).attr("id")].cnpj + " - " + pjs[$(this).attr("id")].sigla + " - " + pjs[$(this).attr("id")].nome_fantasia);
                        $("#<?php echo $this->getName(); ?>").val(pjs[$(this).attr("id")].id);
                        <?php echo $this->getName(); ?>fechar();
                    }
                );
                var paginacao = new Paginacao();
                paginacao.total_pagina = result.total_pagina;
                paginacao.pagina_atual = result.pagina_atual;
                paginacao.primeira = result.primeira;
                paginacao.ultima = result.ultima;
                paginacao.nome_funcao = "<?php echo $this->getName(); ?>_set_page";
                var html = paginacao.render();
                $('<div class="<?php echo $this->getName(); ?>_paginacao">' + html + '</td></tr>').appendTo($("#janela_<?php echo $this->getName(); ?> .modal-body"));
            } else {
                $("<tr class='linha_resultado'><td colspan='3' align='center'>NEHUM REGISTRO LOCALIZADO!</td></tr>").appendTo($("#<?php echo $this->getName(); ?>_resposta"));
            }
            $("#janela_<?php echo $this->getName(); ?> .filtro").first().focus();
            $("#<?php echo $this->getName(); ?>_resposta").show();
        }
    });
}

function <?php echo $this->getName(); ?>fechar() {
    $("#janela_<?php echo $this->getName(); ?>").modal("hide");
}

function <?php echo $this->getName(); ?>_set_page(pagina) {
    $("#<?php echo $this->getName(); ?>_pagina").val(pagina);
    <?php echo $this->getName(); ?>_atualiza_pj();
}
<?php if ($this->hab_adicionar) { ?>
function <?php echo $this->getName(); ?>_salvar_pj() {
    $("#janela_add_<?php echo $this->getName(); ?> .alert").hide();
    var ajax_obj = $.ajax({
        "url" : "<?php echo Escola_Util::getBaseUrl(); ?>/pessoa/pjsalvar/format/json/",
        "type" : "POST",
        "data" : { "cnpj": $("#<?php echo $this->getName(); ?>_add_cnpj").val(),
                   "sigla": $("#<?php echo $this->getName(); ?>_add_sigla").val(),
                   "razao_social": $("#<?php echo $this->getName(); ?>_add_razao_social").val(),
                   "nome_fantasia": $("#<?php echo $this->getName(); ?>_add_nome_fantasia").val(),
                   "email": $("#<?php echo $this->getName(); ?>_add_email").val()},
        "success" : function(result) {
            if (result.erro && result.erro.length) {
                $("#janela_add_<?php echo $this->getName(); ?> .mensagem_erro").html(result.erro);
                $("#janela_add_<?php echo $this->getName(); ?> .alert").show();
            }
            if (result.id > 0) {
                $("#show_<?php echo $this->getName(); ?>").val(result.cnpj + ' - ' + result.sigla + ' - ' + result.nome_fantasia);
                $("#<?php echo $this->getName(); ?>").val(result.id);
                $("#janela_add_<?php echo $this->getName(); ?>").modal("hide");
            }
        }
    });
}
<?php } ?>
</script>
<input type="hidden" name="<?php echo $this->getName(); ?>" id="<?php echo $this->getName(); ?>" value="<?php echo $this->getValue(); ?>" />
<input type="hidden" name="<?php echo $this->getName(); ?>_pagina" id="<?php echo $this->getName(); ?>_pagina" />
        <div id="janela_<?php echo $this->getName(); ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myModalLabel">Pessoa Jurídica</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_cnpj">C.N.P.J:</label>
                                    <div class="controls">
                                        <input type="text" name="<?php echo $this->getName(); ?>_cnpj" id="<?php echo $this->getName(); ?>_cnpj" value="" class="filtro cnpj form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_nome">Nome ou Razão Social:</label>
                                    <div class="controls">
                                        <input type="text" name="<?php echo $this->getName(); ?>_nome" id="<?php echo $this->getName(); ?>_nome" value="" size="60" class="filtro form-control" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <table id="<?php echo $this->getName(); ?>_resposta" class="table table-striped table-bordered">
                            <thead class="head_destino">
                            <tr>
                                <th>ID</th>
                                <th>C.N.P.J</th>
                                <th>Sigla</th>
                                <th>Razão Social</th>
                                <th>Nome Fantasia</th>
                            </tr>
                            </thead>
                            <tbody class="corpo_destino"></tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-white" data-dismiss="modal" aria-hidden="true">Fechar</button>
                        <?php if ($this->hab_adicionar) { ?>
                            <input type="button" value="Adicionar" id="btn_add" class="btn btn-success" />
                        <?php } ?>
                        <input type="button" value="Limpar Filtro" id="btn_limpar_filtro" class="btn btn-warning" />
                        <input type="button" value="Procurar" id="btn_procurar" class="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
        <?php if ($this->hab_adicionar) { ?>
            <div id="janela_add_<?php echo $this->getName(); ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h3 id="myModalLabel">Pessoa Jurídica - Adicionar</h3>
                        </div>
                        <div class="modal-body">
                            <div class="alert">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <span class="mensagem_erro"></span>
                            </div>
                            <fieldset>
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_add_cnpj">C.N.P.J:</label>
                                    <div class="controls">
                                        <input type="text" name="<?php echo $this->getName(); ?>_add_cnpj" id="<?php echo $this->getName(); ?>_add_cnpj" class="field cnpj span4" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_add_sigla">Sigla:</label>
                                    <div class="controls">
                                        <input type="text" name="<?php echo $this->getName(); ?>_add_sigla" id="<?php echo $this->getName(); ?>_add_sigla" class="field span5" maxlength="20" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_add_razao_social">Razão Social:</label>
                                    <div class="controls">
                                        <input type="text" name="<?php echo $this->getName(); ?>_add_razao_social" id="<?php echo $this->getName(); ?>_add_razao_social" class="field span7"  />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_add_nome_fantasia">Nome Fantasia:</label>
                                    <div class="controls">
                                        <input type="text" name="<?php echo $this->getName(); ?>_add_nome_fantasia" id="<?php echo $this->getName(); ?>_add_nome_fantasia" class="field span7"  />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_add_email">E-mail:</label>
                                    <div class="controls">
                                        <input type="text" name="<?php echo $this->getName(); ?>_add_email" id="<?php echo $this->getName(); ?>_add_email" class="field span7"  />
                                    </div>
                                </div>
                            </fieldset>

                        </div>
                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
                            <input type="button" value="Salvar" id="btn_salvar" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
        <label for="<?php echo $this->getName(); ?>"><?php echo $this->getLabel(); ?></label>
        <div class="input-group" id="linha_<?php echo $this->getName(); ?>">
            <input type="text" name="show_<?php echo $this->getName(); ?>" id="show_<?php echo $this->getName(); ?>" disabled class="form-control" value="<?php echo $txt_pj; ?>" />
            <span class="input-group-btn">
                <a href="#" class="link_<?php echo $this->getName(); ?> btn btn-white">
                    <i class="icon-search"></i>
                </a>
            </span>
        </div>
<?php
        $html = ob_get_contents();
        ob_end_clean();
        return $html;
	}
}