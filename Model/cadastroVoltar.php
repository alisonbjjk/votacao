<?php
session_status();
// Incluindo Conexão com o banco de dados, variavel $pdo.
include_once("pdo.php");


// Criando a função para adicionar voto no banco de dados.
function cadastroVoltar($nome, $email, $cpf, $escolha)
{
    global $pdo;
    $sql = "INSERT INTO votacao (nmUser, emailUser, telefone, escolha) VALUES (?,?,?,?)";
    $pdo->prepare($sql)->execute([$nome, $email, $cpf, $escolha]);

}
