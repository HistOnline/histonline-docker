<?php

global $wpdb;

include_once(plugin_dir_path(__FILE__) . 'criar-processar.php');
include_once(plugin_dir_path(__FILE__) . 'models/materia.php');
include_once(plugin_dir_path(__FILE__) . 'models/assunto.php');

function add_input(
    $name,
    $type,
    $label,
    $className,
    $description,
    $placeholder
) {
    echo "<div class=\"input_wrap {$className}\">
    <label to=\"{$name}\">{$label}</label>
    <input type=\"{$type}\" name=\"{$name}\" id=\"{$name}\" placeholder=\"{$placeholder}\" required/>";
    if ($description) {
        echo "<p>{$description}</p>";
    }
    echo "</div>";
}

?>

<div class="wrap">
    <h1 class="wp-heading-inline"><?= get_admin_page_title() ?></h1>
    <h2 class="title">Para adicionar uma nova lâmina preencha o formulário a seguir</h2>
    <form method="post" id="form_add_lamina" enctype="multipart/form-data">
        <?php

        // $source_autocoplete_ata = json_encode($titulo_atas);
        ?>
        <div id="main_image_wrap">
            <div id="details_wrap"></div>
            <div id="image_wrap"></div>
            <input type="hidden" name="myprefix_image_id" id="myprefix_image_id" value="<?= esc_attr($image_id) ?>" class="regular-text" />
            <input type="button" class="button button-primary" value="Selecione uma imagem" id="open_media_manager" data-field="myprefix_image_id" data-image="image_wrap" />
            <button class="button button-primary" id="add_details">Adicionar detalhe</button>
        </div>
        <fieldset>
            <legend>Dados da lâmina</legend>
            <select name="materia" id="materia" required>
                <option value="">Selecione uma matéria</option>
                <?php
                $materias = new Materia;
                foreach ($materias->get() as $materia) {
                    echo "<option value=\"{$materia->ID}\">{$materia->materia}</option>";
                }
                ?>
            </select>
            <select name="assunto" id="assunto" disabled required>
                <option value="">Selecione um assunto</option>
            </select>
            <?= add_input(
                'titulo',
                'text',
                'Título',
                'big',
                null,
                'Título da lâmina'
            ) ?>
            <?= add_input(
                'slug',
                'text',
                'Slug',
                null,
                'O texto que deverá aparecer na url quando chamada a lâmina',
                'exemplo-aqui'
            ) ?>
            <?= add_input(
                'coloracao',
                'text',
                'Coloração utilizada',
                null,
                null,
                'H&E'
            ) ?>
            <?= add_input(
                'aumento',
                'text',
                'Aumento (Zoom)',
                null,
                'Escreva aqui o aumento, <em>objetiva</em> x <em>ocular</em>',
                '200'
            ) ?>
        </fieldset>
        <fieldset id="fieldset_detalhes">
            <legend>Detalhes</legend>
            <textarea id="detalhes" name="detalhes"></textarea>
            <div id="detalhes_wrap"></div>
        </fieldset>
        <fieldset>
            <legend>Máscaras</legend>
            <button type="button" id="add_mask_bt">Adicionar máscara</button>
            <textarea id="mascaras" name="mascaras"></textarea>
            <div id="mascaras_wrap"></div>
        </fieldset>
        <div>
            <div id="textarea_wrap">
                <label for="descricao">Descrição</label>
                <textarea id="descricao" name="descricao" ></textarea>
                <div id="textarea_text"></div>
            </div>
        </div>


        <br><br><input type="submit" value="Adicionar" class="button button-primary" />
    </form>

    <!-- <script>
        jQuery(document).ready(function ($) {
            $("#ata").autocomplete({
                source: <?= $source_autocoplete_ata ?>
            })
        })
    </script> -->
</div>