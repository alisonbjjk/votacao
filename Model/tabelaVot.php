<?php
session_status();
// Incluindo Conexão com o banco de dados, variavel $pdo.
include_once("pdo.php");

// Criando a função da datatable na tela de admin index.
function tabelaVot()
{
    global $pdo;
    $data = $pdo->query("SELECT * FROM votacao;")->fetchAll();;

    foreach ($data as $row) {
        $status = $row["escolha"];
        if ($status == '0') {
            $status = "Filme";
        } elseif ($status == '1') {
            $status = "Série";
        } elseif(($status == '2')) {
            $status = "Os Dois";
        }
        echo ('<tr style="text-align: left;">
        <td style="text-align: center;">' . $row['id'] . '</td>
        <td>' . $row['nmUser'] . '</td>
        <td>' . $row['emailUser'] . '</td>
        <td>' . $row['telefone'] . '</td>
        <td>' . $status . '</td>
        <td>' . $row['dtVotacao'] . '</td>');
    }
}

// Criando a função para calcular números da votação.
function calcularVot()
{
    global $pdo;
    $v1 = $pdo->query("SELECT count(*) FROM votacao where escolha = 'filme';")->fetchColumn();
    $v2 = $pdo->query("SELECT count(*) FROM votacao where escolha = 'serie';")->fetchColumn();
    $v3 = $pdo->query("SELECT count(*) FROM votacao where escolha = 'ambos';")->fetchColumn();

    if ($v1 <> null) {
        $_SESSION['v1'] = $v1;
    } else {
        $v1 = '0';
        $_SESSION['v1'] = $v1;
    }
    if ($v2 <> null) {
        $_SESSION['v2'] = $v2;
    } else {
        $v2 = '0';
        $_SESSION['v2'] = $v2;
    }
    if ($v3 <> null) {
        $_SESSION['v3'] = $v3;
    } else {
        $v3 = '0';
        $_SESSION['v3'] = $v3;
    }
}
