<?php

session_start();
$_SESSION['x'] = 'Oi, eu sou um valor de sessão!';
print_r($_SESSION);
echo '<hr/>';
print_r($_SESSION['y']);


//VARIAVEL QUE VERIFICA SE A AUTENTICAÇÃO FOI REALIZADA
$usuario_autenticado = false;

//USUARIOS DO SISTEMA
$usuarios_app = array(
    array('email' => 'adm@teste.com.br', 'senha' => '123456'),
    array('email' => 'user@teste.com.br', 'senha' => 'abcd')
);
/*

echo '<pre>';
print_r($usuarios_app);
echo '</pre>';

*/

foreach($usuarios_app as $user){
    /*
    echo 'Usuario app: ' . $user['email'] . '/' . $user['senha'];
    echo '<br />';
    echo 'Usuario form: ' . $_POST['email'] . '/' . $_POST['senha'];
    echo '<hr />';
    */
    if($user['email'] == $_POST['email'] && $user['senha'] == $_POST['senha']){
        $usuario_autenticado = true;
    }
}

    if($usuario_autenticado){
        echo 'Usuário autenticado.';

        $_SESSION['autenticado'] = 'SIM';
    }else{  
        $_SESSION['autenticado'] = 'NÃO';
        header('Location: index.php?login=erro');
      }


/*
print_r($_GET)

echo '<br />'
echo $_GET['email']
echo '<br />'
echo $_GET['senha']
print_r($_POST);
*/

?>