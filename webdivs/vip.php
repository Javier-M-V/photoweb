<?php
	session_start();
	
function pagina($logout)
{
	$conexion=new mysqli('localhost','root','','photoweb');
	$conexion->set_charset("utf8");
	$idquery=rand(1,10);
	$query="SELECT consejo FROM consejos WHERE idconsejo=".$idquery.";";
	$resultado_query=$conexion->query($query);
	$fila=$resultado_query->fetch_assoc();
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
			<div id="basegris" align="center">
				<div id="contenedorA">
					<span id="consejo">
						<p>Fotoconsejo :D</p>	
					</span>
					<hr id="separador"></hr>
					<span>
						<p style="font-style: oblique;"id="consejo">'.$fila['consejo'].'</p>
					</span>
				</div>
				<div id="contenedorB">
				</div>
			</div>
			<div id="linea" align="center"></div>
			<div id="login" align="center">'.$logout.'</div>
		</body>
	</html>';
}
if(isset($_POST['Logout']))
	{
		unset($_SESSION['usuario']);
		echo '<html><META HTTP-EQUIV="REFRESH" CONTENT="1;URL=http://localhost/webdivs/principal.php"></html>';
	}
	else if(isset($_SESSION['usuario']))
	{
		pagina('<form id="logout" action="principal.php" method="post">
					<div>
					  	<input class="botonlink" type="submit" name=Logout value="Logout"/>
					</div>
				</form>');
	}
	else
	{
		echo '<html><META HTTP-EQUIV="REFRESH" CONTENT="1;URL=http://localhost/webdivs/principal.php"></html>';
		//caso: si una vez deslogueado se intenta ir para atrás o si se mete manualmente la URL
	}	
?>

