<?php

// Roles AND capabilities
// function wporg_colaboradores_role()
// {
//     add_role(
//         'editor_colaboradores',
//         'Editor de Colaboradores',
//         [
//             'read'         => true,
//             'edit_posts'   => true,
//             'upload_files' => true,
//         ]
//     );
// }
function wporg_colaboradores_role()
{
    remove_role(
        'editor_colaboradores',
        'Editor de Colaboradores',
        [
            'read'         => true,
            'edit_posts'   => true,
            'upload_files' => true,
        ]
    );
}
add_action('init', 'wporg_colaboradores_role', 10);

function wporg_colaboradores_role_caps()
{
    // gets the simple_role role object
    $role = get_role('administrator');
 
    // add a new capability
    $role->add_cap('laminas', true);
}
 
// add simple_role capabilities, priority must be after the initial role definition
add_action('init', 'wporg_colaboradores_role_caps', 11);

?>