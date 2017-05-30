<?php
	session_start();
	function pagina($enlaces,$logout)
	{
		echo
		'<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<link rel="stylesheet" type="text/css" href="estilo.css">
				<style>
				</style>
			</head>
			<body id="cuerpo">
				<div>
					<div id="titulo" align="left">Shutter</div>
					<div id="menu">
						<span id="menuitem"><a href="historia.php">Historia</a></span>
						<span id="menuitem"><a href="fotografos.php">Fotógrafos</a></span>
						<span id="menuitem"><a href="tecnica.php">Técnica</a></span>
						<span id="menuitem"><a href="principal.php">Home</a></span>
					</div>
				<div id="basegris" align="center"><img height="100%" width="%" src="land.jpg"></div>
				<div id="login" align="center">'.$enlaces.'</div>'.$logout.'
			</body>
		</html>';
	}
	if(isset($_POST['Logout']))
	{
		unset($_SESSION['usuario']);
		pagina('<a href="login.php">Login</a>','');

	}
	else if(isset($_SESSION['usuario']))
	{
		pagina('<a href="vip.php">'.$_SESSION['usuario'].'/zona suscriptores</a>','<form id="logout" action="principal.php" method="post">
					<div>
					  	<input class="botonlink" type="submit" name=Logout value="Logout"/>
					</div>
				</form>');
	}
	else
	{
		pagina('<a href="login.php">Login</a>','');
	}	
?>

