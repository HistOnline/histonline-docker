<?php

/**
 * Endpoint para validação de usuários
 */

include_once( plugin_dir_path( __FILE__ ) . 'models/users.php' );
include_once( plugin_dir_path( __FILE__ ) . 'models/hash.php' );

add_action('rest_api_init', function () {
    register_rest_route('users/v1', '/auth', array(
        'methods' => 'POST',
        'callback' => 'validate_user'
    ));
});

function validate_user($data){
    $user = new User;
    
    if(wp_check_password($data["pass"], $user->user($data["user"])->pass)){
        return array(
            "hash" => $user->auth($user->user($data["user"])->ID)
        );
    }else{
        return new WP_Error(
            'nao_autorizado',
            'Usuário e senha não conferem', 
            array( 'status' => 401 ) );
    }
}

add_action('rest_api_init', function () {
    register_rest_route('users/v1', '/vhash', array(
        'methods' => 'POST',
        'callback' => 'validate_hash'
    ));
});

function validate_hash($data){
    $hash = new Hash;
    
    if($hash->check($data["hash"])){
        return array(
            "hash" => $data["hash"]
        );
    }else{
        return new WP_Error(
            'nao_autorizado',
            'Hash inválido ou expirado, favor realizar login novamente', 
            array( 'status' => 401 ) );
    }
}