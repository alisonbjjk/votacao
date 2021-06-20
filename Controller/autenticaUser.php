<?php

 include('../Model/login.php');
$validaCaptcha = false;

if (isset($_POST['g-recaptcha-response'])) {

    $getResponse = 'https://www.google.com/recaptcha/api/siteverify?secret=' . '6LdHggAVAAAAAOLmzGOL0V1w9_jpK0uKhaikTrgg' . '&response=' . $_POST['g-recaptcha-response'];
    $GoogleResponse = (file_get_contents($getResponse));

    if (strpos($GoogleResponse, '"success": true') !== false) {
        $validaCaptcha = true;
        login($_POST['emailUser'], $_POST['senhaUser']);
    } else {
        header('Location: ../Views/erroSenha.php');
    }

    if ($_SESSION['logado'] == '1') {
        header('Location: ../Views/admin');
    } elseif ($_SESSION['admin'] == '0') {
        header('Location: ../Views/erroSenha.php');
    } else {
        header('Location: ../Views/erroSenha.php');
    }
} else {
    header('Location: ../Views/erroSenha.php');
}
