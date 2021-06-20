<?php
session_start();

// Incluindo Conexão com o banco dados variavel $pdo.
include_once("pdo.php");
// Incluindo função de Criptografia.
include("../Controller/cripto.php");

// Criando a função de autentiçaõ do usuario para a tela de login.
function login($emailUser, $senhaUser)
{

    // Criptografando as variáveis de senha com a função cpt
    $senhaUsercpt = cpt($senhaUser);
    global $pdo;

    $stmt = $pdo->query("SELECT * FROM usuario WHERE email = '$emailUser' and
        senha_usuario = '$senhaUsercpt' and ativo = '1' and liberado = '1' and 
            (permissao_usuario = '1' OR permissao_usuario = '2' 
                OR permissao_usuario = '3');");

    $stmt->execute([$emailUser, $senhaUser]);
    // $nu = $stmt->fetchColumn();
    $loginUser = $stmt->fetch();

    // Adicionando endereço do usuário em variavel para salvar nos logs de acesso.
    $IP = ($_SERVER['REMOTE_ADDR']);


    if ($loginUser <> null) {
        // Criando Perimição de logado na sessão para usuário.
        $_SESSION['logado'] = '1';

    }
    //Criando log de acesso no banco de dados para usuário permitido.
    //  $pdo->query("INSERT INTO `log_acesso`( `login_acesso`, `situacao`, `data_hora`, `IP`) VALUES ('$emailUser','PERMITIDO', NOW(), '$IP')");
    else {
        $_SESSION['logado'] = '0';
        //Criando log de acesso no banco de dados para usuário negado.
        //  $pdo->query("INSERT INTO `log_acesso`( `login_acesso`, `situacao`, `data_hora`, `IP`) VALUES ('$emailUser','NEGADO', NOW(), '$IP')");
    }
}

