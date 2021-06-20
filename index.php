<!DOCTYPE html>
<html lang="pt">

<head>
    <title>Votação MIX</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="./estilo/icon/login.png" />
    <link rel="stylesheet" type="text/css" href="./estilo/css/util.css">
    <link rel="stylesheet" type="text/css" href="./estilo/css/main.css">
    <?php
    // include_once('./estilo/linksLogin.php');
    ?>
</head>

<body>
    <div class="limiter">
        <div style="background-color: #848484" class="container-login100">
            <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
                <div style="margin-left: auto; margin-right: auto; margin-top: auto;" class="container-login100-form-btn">
                    <form action="Views/admin/loginUser.php">
                        <button style="margin-right: 10px;" class="login100-form-btn">Sou Adminstrador
                        </button>
                    </form>
                    <form action="Views/votar.php">
                        <button style="margin-left: 30px;" class="login100-form-btn">Página de Votação Mix</button>
                    </form>
                </div>
                </div>
                </div>
            </div>
    </div>
            <div id="dropDownSelect1"></div>
            <?php
            include "./estilo/scriptsLogin.php";
            ?>
</body>

</html>