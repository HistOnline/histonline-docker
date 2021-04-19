<?php

if(isset($_POST["titulo"])):
global $wpdb;

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

$wpdb->query(" 
    INSERT INTO `{$wpdb->prefix}laminas` (
    `ID` ,
    `ID_materia`,
    `ID_assunto`,
    `nome`,
    `slug`,
    `descricao`,
    `coloracao`,
    `aumento`,
    `imagem`,
    `detalhes`,
    `mascaras`
    )
    VALUES (
    NULL ,  
    $ID_materia,  
    $ID_assunto,  
    '$titulo',  
    '$slug',  
    '$descricao', 
    '$coloracao', 
    $aumento,  
    '$imagem', 
    '$detalhes', 
    '$mascaras' 
    );")or die($wpdb->error);

echo "<span class='success'>Lâmina adicionada com sucesso</span>";

endif;

?>