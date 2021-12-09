<?php

// No ambiente de produção o sistema fica dentro da pasta adm por limitações do servidor
// if (!@include($_SERVER['DOCUMENT_ROOT'] . '/adm/wp-load.php')) {
//     require_once($_SERVER['DOCUMENT_ROOT'] . '/wp-load.php');
// } else {
//     require_once($_SERVER['DOCUMENT_ROOT'] . '/adm/wp-load.php');
// }

include_once( plugin_dir_path( __FILE__ ) . 'hash.php' );

    class User {
        function get(){
            global $wpdb;
            return $wpdb->get_results("SELECT * FROM {$wpdb->prefix}users");
        }

        function get_json($username){
            global $wpdb;
            return $wpdb->get_row("SELECT ID, user_login as user, user_pass as pass FROM {$wpdb->prefix}users WHERE user_login = \"{$username}\" ");
        }

        function auth($id){
            $hash = new Hash;
            return $hash->create($id);
        }

        function check($hash){
            global $wpdb;
            return $hash->check($hash);
        }
    }
?>