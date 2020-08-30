<?php
// +----------------------------------------------------------------------+
// | BoletoPhp - VersÃÂ£o Beta                                              |
// +----------------------------------------------------------------------+
// | Este arquivo estÃÂ¡ disponÃÂ­vel sob a LicenÃÂ§a GPL disponÃÂ­vel pela Web   |
// | em http://pt.wikipedia.org/wiki/GNU_General_Public_License           |
// | VocÃÂª deve ter recebido uma cÃÂ³pia da GNU Public License junto com     |
// | esse pacote; se nÃÂ£o, escreva para:                                   |
// |                                                                      |
// | Free Software Foundation, Inc.                                       |
// | 59 Temple Place - Suite 330                                          |
// | Boston, MA 02111-1307, USA.                                          |
// +----------------------------------------------------------------------+

// +----------------------------------------------------------------------+
// | Originado do Projeto BBBoletoFree que tiveram colaboraÃÂ§ÃÂµes de Daniel |
// | William Schultz e Leandro Maniezo que por sua vez foi derivado do	  |
// | PHPBoleto de JoÃÂ£o Prado Maia e Pablo Martins F. Costa				        |
// | 																	                                    |
// | Se vc quer colaborar, nos ajude a desenvolver p/ os demais bancos :-)|
// | Acesse o site do Projeto BoletoPhp: www.boletophp.com.br             |
// +----------------------------------------------------------------------+

// +----------------------------------------------------------------------+
// | Equipe CoordenaÃÂ§ÃÂ£o Projeto BoletoPhp: <boletophp@boletophp.com.br>   |
// | Desenvolvimento Boleto Real: Juan Basso         		                  |
// +----------------------------------------------------------------------+


// ------------------------- DADOS DINÃÂMICOS DO SEU CLIENTE PARA A GERAÃÂÃÂO DO BOLETO (FIXO OU VIA GET) -------------------- //
// Os valores abaixo podem ser colocados manualmente ou ajustados p/ formulÃÂ¡rio c/ POST, GET ou de BD (MySql,Postgre,etc)	//

// DADOS DO BOLETO PARA O SEU CLIENTE
$dias_de_prazo_para_pagamento = 5;
$taxa_boleto = 2.95;
$data_venc = date("d/m/Y", time() + ($dias_de_prazo_para_pagamento * 86400));  // Prazo de X dias OU informe data: "13/04/2006"; 
$valor_cobrado = "2950,00"; // Valor - REGRA: Sem pontos na milhar e tanto faz com "." ou "," ou com 1 ou 2 ou sem casa decimal
$valor_cobrado = str_replace(",", ".",$valor_cobrado);
$valor_boleto=number_format($valor_cobrado+$taxa_boleto, 2, ',', '');

$dadosboleto["nosso_numero"] = "0000000123456";  // Nosso numero - REGRA: MÃÂ¡ximo de 13 caracteres!
$dadosboleto["numero_documento"] = "1234567";	// Num do pedido ou do documento
$dadosboleto["data_vencimento"] = $data_venc; // Data de Vencimento do Boleto - REGRA: Formato DD/MM/AAAA
$dadosboleto["data_documento"] = date("d/m/Y"); // Data de emissÃÂ£o do Boleto
$dadosboleto["data_processamento"] = date("d/m/Y"); // Data de processamento do boleto (opcional)
$dadosboleto["valor_boleto"] = $valor_boleto; 	// Valor do Boleto - REGRA: Com vÃÂ­rgula e sempre com duas casas depois da virgula

// DADOS DO SEU CLIENTE
$dadosboleto["sacado"] = "Nome do seu Cliente";
$dadosboleto["endereco1"] = "EndereÃÂ§o do seu Cliente";
$dadosboleto["endereco2"] = "Cidade - Estado -  CEP: 00000-000";

// INFORMACOES PARA O CLIENTE
$dadosboleto["demonstrativo1"] = "Pagamento de Compra na Loja Nonononono";
$dadosboleto["demonstrativo2"] = "Mensalidade referente a nonon nonooon nononon<br>Taxa bancÃÂ¡ria - R$ ".number_format($taxa_boleto, 2, ',', '');
$dadosboleto["demonstrativo3"] = "BoletoPhp - http://www.boletophp.com.br";
$dadosboleto["instrucoes1"] = "- Sr. Caixa, cobrar multa de 2% apÃÂ³s o vencimento";
$dadosboleto["instrucoes2"] = "- Receber atÃÂ© 10 dias apÃÂ³s o vencimento";
$dadosboleto["instrucoes3"] = "- Em caso de dÃÂºvidas entre em contato conosco: xxxx@xxxx.com.br";
$dadosboleto["instrucoes4"] = "&nbsp; Emitido pelo sistema Projeto BoletoPhp - www.boletophp.com.br";

// DADOS OPCIONAIS DE ACORDO COM O BANCO OU CLIENTE
$dadosboleto["quantidade"] = "";
$dadosboleto["valor_unitario"] = "";
$dadosboleto["aceite"] = "N";		
$dadosboleto["especie"] = "R$";
$dadosboleto["especie_doc"] = "";


// ---------------------- DADOS FIXOS DE CONFIGURAÃÂÃÂO DO SEU BOLETO --------------- //


// DADOS DA SUA CONTA - REAL
$dadosboleto["agencia"] = "1234"; // Num da agencia, sem digito
$dadosboleto["conta"] = "0012345"; 	// Num da conta, sem digito
$dadosboleto["carteira"] = "57";  // CÃÂ³digo da Carteira

// SEUS DADOS
$dadosboleto["identificacao"] = "BoletoPhp - CÃÂ³digo Aberto de Sistema de Boletos";
$dadosboleto["cpf_cnpj"] = "";
$dadosboleto["endereco"] = "Coloque o endereÃÂ§o da sua empresa aqui";
$dadosboleto["cidade_uf"] = "Cidade / Estado";
$dadosboleto["cedente"] = "Coloque a RazÃÂ£o Social da sua empresa aqui";

// NÃÂO ALTERAR!
include("include/funcoes_real.php"); 
include("include/layout_real.php");
?>
