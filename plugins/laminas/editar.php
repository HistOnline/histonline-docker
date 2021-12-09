<?php
global $wpdb;

include_once(plugin_dir_path(__FILE__) . 'editar-processar.php');
include_once(plugin_dir_path(__FILE__) . 'models/materia.php');
include_once(plugin_dir_path(__FILE__) . 'models/lamina.php');

$userID = get_current_user_id();
$current_url = "//" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
$edit_url = get_admin_url(null, '', 'admin') . "admin.php?page=lamina-editar";

if (!isset($_GET["id"])) {

    /**
     * * Listagem de registro
     */

?>

    <div class="wrap">
        <h1 class="wp-heading-inline"><?= get_admin_page_title() ?></h1><a href="<?php echo get_admin_url(null, '', 'admin') ?>admin.php?page=colaboradores-criar" class="page-title-action">
            Criar novo</a><br />
        <p>Essas são as lâminas existentes, para editar favor acessar na tabela a coluna de opções:</p>

        <table id="lista_laminas" class="display">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Matéria</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php
                $lamina = new Lamina;
                $laminas = $lamina->get();

                foreach ($laminas as $lamina) {
                    $lamina->descricao = wp_trim_words($lamina->descricao, 20);
                    $materia = new Materia;
                    $materia = $materia->get($lamina->ID_materia)->materia;
                    // $materia = $materia->materia;

                    echo "<tr>" .
                        "<td>{$lamina->ID}</td>" .
                        "<td>{$materia}</td>" .
                        "<td>{$lamina->nome}</td>" .
                        "<td>{$lamina->descricao}</td>" .
                        "<td>[<a href=\"{$edit_url}&id={$lamina->ID}\">Editar</a>] [<a href=\"{$current_url}&delete={$lamina->ID}\">Excluir</a>]</td>" .
                        "</tr>";
                }
                ?>
            </tbody>
        </table>
        <script>
            jQuery(document).ready(function($) {
                $('#lista_laminas').DataTable();
            });
        </script>

        <br><br><input type="submit" value="Adicionar" class="button button-primary" />
        </form>
    </div>

<?php

} else {

    /**
     * * Formulário de EDIÇÃO
     */

     
    function add_input(
        $name,
        $type,
        $label,
        $className,
        $description,
        $placeholder,
        $value
    ) {
        echo "<div class=\"input_wrap {$className}\">
        <label to=\"{$name}\">{$label}</label>
        <input type=\"{$type}\" name=\"{$name}\" id=\"{$name}\" value=\"{$value}\" placeholder=\"{$placeholder}\" required/>";
        if ($description) {
            echo "<p>{$description}</p>";
        }
        echo "</div>";
    }

?>

    <?php
    
    $lamina = new Lamina;
    $lamina = $lamina->get($_GET["id"]);
    ?>

    <div class="wrap">
        <h1 class="wp-heading-inline"><?= get_admin_page_title() ?></h1>
        <h2 class="title">Para editar uma nova lâmina preencha o formulário a seguir</h2>
        <form method="post" id="form_edit_lamina" enctype="multipart/form-data">

            <input type="hidden" value="<?=$lamina->ID?>" name="id" />
            <div id="main_image_wrap">
                <div id="details_wrap"></div>
                <div id="image_wrap"></div>
                <input type="hidden" name="myprefix_image_id" id="myprefix_image_id" value="<?= esc_attr($lamina->imagem) ?>" class="regular-text" />
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
                <select name="assunto" id="assunto" required>
                    <option value="">Selecione um assunto</option>
                    <?php

                    $assuntos = new Assunto;
                    foreach ($assuntos->get_from_materias($lamina->ID_materia) as $assunto) {
                        echo "<option value=\"{$assunto->ID}\">{$assunto->assunto}</option>";
                    }

                    ?>
                </select>
                <?= add_input(
                    'titulo',
                    'text',
                    'Título',
                    'big',
                    null,
                    'Título da lâmina',
                    $lamina->nome
                ) ?>
                <?= add_input(
                    'slug',
                    'text',
                    'Slug',
                    null,
                    'O texto que deverá aparecer na url quando chamada a lâmina',
                    'exemplo-aqui',
                    $lamina->slug
                ) ?>
                <?= add_input(
                    'coloracao',
                    'text',
                    'Coloração utilizada',
                    null,
                    null,
                    'H&E',
                    $lamina->coloracao
                ) ?>
                <?= add_input(
                    'aumento',
                    'text',
                    'Aumento (Zoom)',
                    null,
                    'Escreva aqui o aumento, <em>objetiva</em> x <em>ocular</em>',
                    '200',
                    $lamina->aumento
                ) ?>
            </fieldset>
            <fieldset id="fieldset_detalhes">
                <legend>Detalhes</legend>
                <textarea id="detalhes" name="detalhes"><?=$lamina->detalhes?></textarea>
                <div id="detalhes_wrap"></div>
            </fieldset>
            <fieldset>
                <legend>Máscaras</legend>
                <button type="button" id="add_mask_bt">Adicionar máscara</button>
                <textarea id="mascaras" name="mascaras"><?=$lamina->mascaras?></textarea>
                <div id="mascaras_wrap"></div>
            </fieldset>
            <div>
                <div id="textarea_wrap">
                <label for="descricao">Descrição</label>
                    <textarea id="descricao" name="descricao"><?=preg_replace( "/\r|\n/", "", $lamina->descricao)?></textarea>
                    <div id="textarea_text"></div>
                </div>
            </div>


            <br><br><input type="submit" value="Atualizar" class="button button-primary" />
        </form>
    </div>

    <script>
        // Adiciono valor ao select pelo JQuery
        jQuery(document).ready(function($) {
            $("select[name=materia]").val("<?= $lamina->ID_materia ?>")
            $("select[name=assunto]").val("<?= $lamina->ID_assunto ?>")

            setTimeout( function(){
                $("textarea#descricao").blur()
            }, 300)

            get_image(<?=$lamina->imagem?> , 'image_wrap')
        })
    </script>

<?php

}

?>