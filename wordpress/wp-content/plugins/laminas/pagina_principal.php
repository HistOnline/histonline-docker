<?php
global $wpdb;

include_once(plugin_dir_path(__FILE__) . 'excluir-processar.php');
include_once(plugin_dir_path(__FILE__) . 'models/materia.php');
include_once(plugin_dir_path(__FILE__) . 'models/lamina.php');

$userID = get_current_user_id();
$current_url = "//" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
$edit_url=get_admin_url( null, '', 'admin' )."admin.php?page=lamina-editar";

?>
<div class="wrap">
    <h1 class="wp-heading-inline"><?= get_admin_page_title() ?></h1><a href="<?php echo get_admin_url(null, '', 'admin') ?>admin.php?page=lamina-criar" class="page-title-action">
        Criar novo</a><br />

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

                    echo "<tr>".
                    "<td>{$lamina->ID}</td>".
                    "<td>{$materia}</td>".
                    "<td>{$lamina->nome}</td>".
                    "<td>{$lamina->descricao}</td>".
                    "<td>[<a href=\"{$edit_url}&id={$lamina->ID}\">Editar</a>] [<a href=\"{$current_url}&delete={$lamina->ID}\">Excluir</a>]</td>".
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
</div>