<?php
class Escola_Form_Element_Select_Table_PessoaMotorista extends Escola_Form_Element_Select_Table {
    
    public function init() {
        parent::init();
        $this->setPkName("id_pessoa_motorista");
        $this->setModel("TbPessoaMotorista");
    }
	
	public function render(Zend_View_Interface $view = null) {
        $tb = new TbCnhCategoria();
        $tps = $tb->listar();
        $pessoa_motorista = TbPessoaMotorista::pegaPorId($this->getValue());
        $txt = "";
        if ($pessoa_motorista) {
            $txts = array();
            $txts[] = $pessoa_motorista->cnh_numero;
            $pf = $pessoa_motorista->findParentRow("TbPessoaFisica");
            if ($pf) {
                $txts[] = $pf->nome;
            }
            $cnh_categoria = $pessoa_motorista->findParentRow("TbCnhCategoria");
            if ($cnh_categoria) {
                $txts[] = $cnh_categoria->toString();
            }
            if (count($txts)) {
                $txt = implode(" - ", $txts);
            }
        }
        ob_start();
?>
<script type="text/javascript">
var <?php echo $this->getName(); ?>_pessoa_motorista = [];
$(document).ready(function() {
    $(".link_<?php echo $this->getName(); ?>").click(function(event) {
        event.preventDefault();
        $("#janela_<?php echo $this->getName(); ?>").modal("show");
    });
    $("#janela_<?php echo $this->getName(); ?>").on("show", function() {
        $("#janela_<?php echo $this->getName(); ?> .filtro, #<?php echo $this->getName(); ?>_pagina").val("");
        <?php echo $this->getName(); ?>_atualiza_pessoa_motorista();
    });
    $("#janela_<?php echo $this->getName(); ?>").keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            <?php echo $this->getName(); ?>_atualiza_pessoa_motorista();
        }
    });
    $("#janela_<?php echo $this->getName(); ?> #btn_procurar").click(function() {
        <?php echo $this->getName(); ?>_atualiza_pessoa_motorista();
    });
    $("#janela_<?php echo $this->getName(); ?> #btn_limpar_filtro").click(function() {
        $("#janela_<?php echo $this->getName(); ?> .filtro, #<?php echo $this->getName(); ?>_pagina").val("");
        <?php echo $this->getName(); ?>_atualiza_pessoa_motorista();
    });
})

function <?php echo $this->getName(); ?>_atualiza_pessoa_motorista() {
    $("#<?php echo $this->getName(); ?>_resposta .corpo_destino tr, .<?php echo $this->getName(); ?>_paginacao").remove();
    $("#<?php echo $this->getName(); ?>_resposta").hide();
    var ajax_obj = $.ajax({
        "url" : "<?php echo Escola_Util::getBaseUrl(); ?>/pessoamotorista/listarporpagina/format/json/",
        "type" : "POST",
        "data" : { "filtro_id_cnh_categoria": $("#<?php echo $this->getName(); ?>_id_cnh_categoria").val(),
                   "filtro_cpf": $("#<?php echo $this->getName(); ?>_cpf").val(),
                   "filtro_nome": $("#<?php echo $this->getName(); ?>_nome").val(),
                   "pagina_atual": $("#<?php echo $this->getName(); ?>_pagina").val(),
                   "qtd_por_pagina": 20 },
        "success" : function(result) {
            <?php echo $this->getName(); ?>_pessoa_motorista = [];
            if (result.items && result.items.length) {
                for (var i = 0; i < result.items.length; i++) {
                    var item = result.items[i];
                    <?php echo $this->getName(); ?>_pessoa_motorista[i] = item;
                    var tr = $('<tr class="linha_resultado"></tr>');
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.id + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.cpf + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.nome + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.cnh_numero + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.cnh_categoria + '</a></td>').appendTo(tr);
                    $('<td><a href="#" id="' + i + '" class="link_destino">' + item.cnh_validade + '</a></td>').appendTo(tr);
                    tr.appendTo($("#<?php echo $this->getName(); ?>_resposta .corpo_destino"));
                }
                $(".link_destino").click(
                    function(event) {
                        event.preventDefault();
                        $("#show_<?php echo $this->getName(); ?>").val(<?php echo $this->getName(); ?>_pessoa_motorista[$(this).attr("id")].cnh_numero + " - " + <?php echo $this->getName(); ?>_pessoa_motorista[$(this).attr("id")].nome + " - " + <?php echo $this->getName(); ?>_pessoa_motorista[$(this).attr("id")].cnh_categoria);
                        $("#<?php echo $this->getName(); ?>").val(<?php echo $this->getName(); ?>_pessoa_motorista[$(this).attr("id")].id);
                        <?php echo $this->getName(); ?>fechar();
                        $("#<?php echo $this->getName(); ?>").change();
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
    <?php echo $this->getName(); ?>_atualiza_pf();
}
</script>
<input type="hidden" name="<?php echo $this->getName(); ?>" id="<?php echo $this->getName(); ?>" value="<?php echo $this->getValue(); ?>" />
<input type="hidden" name="<?php echo $this->getName(); ?>_pagina" id="<?php echo $this->getName(); ?>_pagina" />
        <div id="janela_<?php echo $this->getName(); ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myModalLabel">Motorista</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_cpf">C.P.F.:</label>
                                    <input type="text" name="<?php echo $this->getName(); ?>_cpf" id="<?php echo $this->getName(); ?>_cpf" value="" class="filtro cpf form-control" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="<?php echo $this->getName(); ?>_nome">Nome:</label>
                                    <input type="text" name="<?php echo $this->getName(); ?>_nome" id="<?php echo $this->getName(); ?>_nome" value="" size="60" class="filtro form-control" />
                                </div>
                            </div>
                            <?php if ($tps) { ?>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="<?php echo $this->getName(); ?>_id_cnh_categoria">Categoria da Habilitação:</label>
                                        <select name="<?php echo $this->getName(); ?>_id_cnh_categoria" id="<?php echo $this->getName(); ?>_id_cnh_categoria" class="filtro form-control">
                                            <option value="">==> SELECIONE <==</option>
                                            <?php foreach ($tps as $tp) { ?>
                                                <option value="<?php echo $tp->getId(); ?>"><?php echo $tp->toString(); ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                        <table id="<?php echo $this->getName(); ?>_resposta" class="table table-striped table-bordered">
                            <thead class="head_destino">
                            <tr>
                                <th>ID</th>
                                <th>C.P.F.</th>
                                <th>Nome</th>
                                <th>Número CNH</th>
                                <th>Categoria CNH</th>
                                <th>Validade CNH</th>
                            </tr>
                            </thead>
                            <tbody class="corpo_destino"></tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-white" data-dismiss="modal" aria-hidden="true">Fechar</button>
                        <input type="button" value="Limpar Filtro" id="btn_limpar_filtro" class="btn btn-danger" />
                        <input type="button" value="Procurar" id="btn_procurar" class="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
<label for="<?php echo $this->getName(); ?>"><?php echo $this->getLabel(); ?></label>
<div class="input-group" id="linha_<?php echo $this->getName(); ?>">
    <input type="text" name="show_<?php echo $this->getName(); ?>" id="show_<?php echo $this->getName(); ?>" disabled class="form-control" value="<?php echo $txt; ?>" />
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