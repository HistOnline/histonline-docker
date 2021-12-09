<?php

//novo

if(isset($_POST["titulo"])):
global $wpdb;

$ID = $_POST["id"];
$ID_materia = $_POST["materia"];
$ID_assunto = $_POST["assunto"];
$titulo = $_POST["titulo"];
$slug = $_POST["slug"];
$coloracao = $_POST["coloracao"];
$aumento = $_POST["aumento"];
$descricao = $_POST["descricao"];
$detalhes = $_POST["detalhes"];
$mascaras = $_POST["mascaras"];
$imagem = $_POST["myprefix_image_id"];

$wpdb->query("UPDATE `{$wpdb->prefix}laminas` SET 
    `ID_materia` = {$ID_materia},
    `ID_assunto` = {$ID_assunto},
    `nome` = '{$titulo}',
    `slug` = '{$slug}',
    `descricao` = '{$descricao}',
    `coloracao` = '{$coloracao}',
    `aumento` = '{$aumento}',
    `imagem` = {$imagem},
    `detalhes` = '{$detalhes}',
    `mascaras` = '{$mascaras}'
    WHERE id = $ID;
")or die($wpdb->error);

echo "<span class='success'>Os dados da lâmina foram atualizados com sucesso</span>";

endif;


?>