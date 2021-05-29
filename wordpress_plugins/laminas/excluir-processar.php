<?php

if (isset($_GET["delete"])) :
    global $wpdb;

    $wpdb->query("UPDATE `{$wpdb->prefix}laminas` 
        SET `b_del` = 1 WHERE `ID` = {$_GET["delete"]};"
    ) or die($wpdb->error);

    echo "<span class='error'>A lâmina foi removida com sucesso</span>";

endif;
