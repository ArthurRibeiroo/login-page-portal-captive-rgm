<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Rede Giga Metrópole</title>
	<style>
		@font-face {
			font-family: 'Roboto';
			font-style: normal;
			font-weight: 300;
			src: local('Roboto Light'), local('Roboto-Light'), url(./captiveportal-Roboto-Light.ttf) format('truetype');
		}
		html, body {
			background: #50a3a2;
			background: -webkit-linear-gradient(top left, #0095db 0%, #53e3a6 100%);
			background: linear-gradient(to bottom right, #0095db 0%, #53e3a6 100%);
			font-family: 'Roboto', sans-serif;
			font-weight: 300;
			height: 100%; /*Allow spacing based on window height*/
			margin: 0;
			min-height: 240px;
		}
		.center .err{
			color: red;
		}
		.apoio{
			text-align: center;
		}
		.apoio p {
			font-weight: 500;
			font-size: 0.8rem;
		}
		.left{
			float: left;
			margin-top: 28px;
		}
		.right{
			float: right;
			margin-top: 28px;
		}
		.login-form-text {
			text-transform: uppercase;
			/*letter-spacing: 1px;*/
			font-size: 1rem;
		}
		.center{
			text-align: center;
		}
		.content {
			background: #FFF;
			border-radius: 8px;
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
			display: block;
			left: 50%;
			max-width: 420px;
			position: absolute;
			top: 50%;
			-ms-transform: translate(-50%, -50%);
			-webkit-transform: translate(-50%, -50%);
			transform: translate(-50%, -50%);
			width: 90%;
			z-index: 2;
			box-shadow: 0 16px 28px 0 rgba(0,0,0,0.22),0 25px 55px 0 rgba(0,0,0,0.21);
		}

		form {
			display: block;
			margin: auto;
			padding: 27px 0;
			width: 85%;
		}

		/*Text-inputs*/
		.mat-in {
			position: relative;
			margin-bottom: 32px;
		}

		input {
			border: none;
			border-bottom: 1px solid #9E9E9E;
			display: block;
			font-size: 16px;
			padding: 8px 0px;
			-webkit-transition: 0.2s border-bottom;
			transition: 0.2s border-bottom;
			width: 100%;
		}

		input:focus, input:invalid {
			box-shadow: none;
			outline: none;
		}

		input:focus {
			border-bottom: 1px solid #2196f3;
		}

		/*Labels*/
		label {
			color: #9E9E9E;
			font-size: 16px;
			pointer-events: none;
			position: absolute;
			top: 10px;
			-webkit-transition: 0.2s ease all;
			transition: 0.2s ease all;
		}

		input:focus ~ label, input:valid ~ label {
			color: #2196f3;
			font-size: 12px;
			top: -16px;
		}

		/*Bar that appears when an input is selected*/
		.bar:before, .bar:after {
			background: #2196f3;
			bottom: 1px;
			content: '';
			height: 2px;
			position: absolute;
			-webkit-transition: 0.2s ease all;
			transition: 0.2s ease all;
			width: 0;
		}

		.bar:before {
			left: 50%;
		}

		.bar:after {
			right: 50%;
		}

		input:focus ~ .bar:before, input:focus ~ .bar:after {
			width: 50%;
		}

		/*Submit Button*/
		#login {
			background: #2196f3;
			border: none;
			border-radius: 2px;
			color: #FFF;
			cursor: pointer;
			font-size: 16px;
			opacity: 0.999;
			padding: 8px 0;
			position: relative;
			-webkit-transition: 0.2s ease background;
			transition: .2s ease background;
			width: 100%;
		}

		#login:hover {
			background: #1976d2;
		}

		#login:before, #login:after {
			border-radius: 2px;
			content: '';
			height: 0;
			left: 0;
			opacity: 0;
			position: absolute;
			width: 100%;
			-webkit-transition: 0.2s ease all;
			transition: .2s ease all;
			z-index: -1;
		}

		#login:before {
			top: 50%;
		}

		#login:after {
			bottom: 50%;
		}

		#login:active:before, #login:active:after {
			background: #0d47a1;
			height: 50%;
			opacity: 1;
		}

		/*Error Messages*/
		.error {
			color: #F44336;
			margin: 16px auto 0;
			text-align: center;
			width: 90%;
		}
		.logo{
			padding: 10px;
			text-align: center;
		}
	</style>
</head>
<body>
	<div class="content">
		<div class="logo">
			<a href="https://sistemas.ufrn.br/portal/PT/;jsessionid=E89F1E265FBDD4623FF7CC66A075E056.sistemas2bi1"><img class="left" src="./captiveportal-UFRN-PNG.png" style="width: 90px"></a>
			<a href="http://www.pop-rn.rnp.br/"><img src="./captiveportal-PoP-RN02_0.png" style="width: 80px; margin-left: 35px;"></a>
			<a href="http://portal.imd.ufrn.br/"><img class="right" src="./captiveportal-logo-imd.png" style="width: 140px">	</a>		
		</div>
		<form method="post" action="$PORTAL_ACTION$">
			<p class="center login-form-text">BEM VINDO A REDE GIGA METROPÓLE</p>
			<br>
			<div class="mat-in">
				<input type="text" name="auth_user" value="" required></input>
				<span class="bar"></span>
				<label>Login</label>
			</div>
			<div class="mat-in">
				<input type="password" name="auth_pass" value="" required></input>
				<span class="bar"></span>
				<label>Senha</label>
			</div>
			<input name="redirurl" type="hidden" value="$PORTAL_REDIRURL$">
			<input name="zone" type="hidden" value="$PORTAL_ZONE$">
			<button name="accept" type="submit" value="Continue" id="login">Login</button>
		</form>
		<div class="apoio">
			<p>Apoio:</p>
			<p>Governo do Estado do Rio Grande do Norte</p>
			<p>Prefeitura Municipal Macaíba</p>
			<p>Prefeitura Municipal Parnamirim</p>
			<p>Prefeitura Municipal São Gonçalo</p>
		</div>
	</div>
</body>
</html>