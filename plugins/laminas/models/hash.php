<?php

// No ambiente de produção o sistema fica dentro da pasta adm por limitações do servidor
// if (!@include($_SERVER['DOCUMENT_ROOT'] . '/adm/wp-load.php')) {
//     require_once($_SERVER['DOCUMENT_ROOT'] . '/wp-load.php');
// } else {
//     require_once($_SERVER['DOCUMENT_ROOT'] . '/adm/wp-load.php');
// }

    class Hash {

        function create($id){
            global $wpdb;
            $user = $wpdb->get_row("SELECT ID, user_login as user, user_pass as pass FROM {$wpdb->prefix}users WHERE ID = {$id} ");

            $date = date("Y-m-d");
            $decrypted = "{$user->user}@{$user->pass}:{$date}";
            $encrypted = md5($decrypted);

            $hash = $wpdb->get_row("SELECT * FROM {$wpdb->prefix}laminas_hash WHERE ID_user = {$id} AND `hash` = '{$encrypted}' ");
            
            // Armazena o hash do dia no banco de dados
            if($hash == null){
                $wpdb->query("INSERT INTO {$wpdb->prefix}laminas_hash (`ID_user`, `hash`) VALUES ($id, '{$encrypted}')");
            }

            return $encrypted;
        }

        function check($hash){
            global $wpdb;
            // Verifica qual o ID de usuário que tem esse hash
            $hashUser = $wpdb->get_row("SELECT * FROM {$wpdb->prefix}laminas_hash WHERE `hash` = '{$hash}' ");
            // Recria hash com nome de usuário, senha e data de hoje e então verifica se está dentro da validade
            $user = $wpdb->get_row("SELECT ID, user_login as user, user_pass as pass FROM {$wpdb->prefix}users WHERE ID = {$hashUser->ID_user} ");
            // Retorna true ou false para resultado
            $date = date("Y-m-d");
            $userHash = "{$user->user}@{$user->pass}:{$date}";
            return $hash == md5($userHash);
        }
    }
?>