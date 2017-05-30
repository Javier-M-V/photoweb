<?php
	session_start();
?>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="estilo.css">
		<style>
		<style>
		
		</style>
	</head>
	<body id="cuerpo">
		<div>
			<div id="titulo2" align="left">Técnica</div>
			<div id="menu">
				<span id="menuitem"><a href="historia.php">Historia</a></span>
				<span id="menuitem"><a href="fotografos.php">Fotógrafos</a></span>
				<span id="menuitem"><a href="tecnica.php">Técnica</a></span>
				<span id="menuitem"><a href="principal.php">Home</a></span>
			</div>
		<div id="linea" align="center"></div>
		<div id="basegris" align="center"></div>
		<div id="linea" align="center"></div>
		<?php
		if(isset($_SESSION['usuario']))/*o te lanza el enlace a login o te lanza el enlace a la "zona vip"*/
		{
			echo'<div id="login" align="center"><a href="vip.php">'.$_SESSION['usuario'].'/zona suscriptores</a></a></div>';
		}
		else
		{
			echo'<div id="login" align="center" class="ancho"> <a href="login.php">Login</a></div>';
		}
	?>	
	</body>
</html>
