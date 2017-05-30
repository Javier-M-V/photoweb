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
		<style>
		
		</style>
	</head>
	<body id="cuerpo">
		<div>
			<div id="titulo2" align="left">Shuter/'.$_SESSION['usuario'].'</div>
			<div id="menu">
				<span id="menuitem"><a href="historia.php">Historia</a></span>
				<span id="menuitem"><a href="fotografos.php">Fotógrafos</a></span>
				<span id="menuitem"><a href="tecnica.php">Técnica</a></span>
				<span id="menuitem"><a href="principal.php">Home</a></span>
			</div>
		<div id="linea" align="center"></div>
		<div id="basegris" align="center"></div>
		<div id="linea" align="center"></div>
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
		pagina('','<form id="logout" action="principal.php" method="post">
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