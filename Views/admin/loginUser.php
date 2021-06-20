<?php
session_start();
session_destroy();
session_start();
// include_once('../Controller/chaveCaptcha.php');
?>
<!DOCTYPE html>
<html lang="pt">

<head>
	<title>Tela de Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="../../estilo/icon/login.png" />
	<link rel="stylesheet" type="text/css" href="../../estilo/css/util.css">
	<link rel="stylesheet" type="text/css" href="../../estilo/css/main.css">
	<?php
	include_once('../../estilo/linksLogin.php');
	?>
</head>

<body>
	<div class="limiter">
		<div style="background-color: #848484" class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form action="../../Controller/autenticaUser.php" method="post" class="login100-form validate-form flex-sb flex-w">
					<span style="text-align: center" class="login100-form-title p-b-32">
						Mini Projeto
					</span>
					<span class="txt1 p-b-11">
						Login
					</span>
					<div class="wrap-input100 validate-input m-b-36">
						<input class="input100" id="loginUser" placeholder="E-mail" type="email" name="emailUser" value="">
						<span class="focus-input100"></span>
					</div>
					<span class="txt1 p-b-11">
						Senha
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate="Digite sua senha!">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
						<input class="input100" type="password" placeholder="Senha" name="senhaUser">
						<span class="focus-input100"></span>
					</div>
					<div action="?" method="POST">
						<div style="margin-left: 15%; margin-top: 10px;" class="g-recaptcha" data-sitekey="6LdHggAVAAAAABUqQ8aurNY-0FC-hYBqCEMLE4Wt">
						</div>
						<br>
					</div>
					<div>
						<c>Ainda não é cadastrado?</c><br>
						<a style="margin-left: auto; margin-right: auto;" href="./cadastro.php">Cadastre-se aqui!</a>
						<br>
						<a href="../../index.php">Voltar para a tela inicial...</a>
					</div>
					<div style="margin-left: 60%; margin-top: 5px;" class="container-login100-form-btn">
						<button class="login100-form-btn">
							Conecte-se
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	<?php
	include "../../estilo/scriptsLogin.php";
	?>
</body>

</html>