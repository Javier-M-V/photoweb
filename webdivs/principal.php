<?php
	session_start();
	function pagina($enlaces)
	{
		echo'<html>
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
					<span id="menuitem"><a href="historia.html">Historia</a></span>
					<span id="menuitem"><a href="fotografos.html">Fotógrafos</a></span>
					<span id="menuitem"><a href="tecnica.html">Técnica</a></span>
					<span id="menuitem"><a href="principal.php">Home</a></span>
				</div>
			<div id="basegris" align="center"><img height="100%" width="%" src="land.jpg"></div>
			<div id="login" align="center">'.$enlaces.'</div>
			</body>
			</html>';
	}
	if(isset($_SESSION['usuario']))
	{
		pagina('<a href="vip.php">'.$_SESSION['usuario'].'/zona suscriptores</a>');
	}
	else
	{
		pagina('<a href="login.php">Login</a>');
	}	
?>

