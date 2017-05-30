<?php
	session_start();
?>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<style>

	</style>
</head>
<body id="cuerpo">
	<div>
		<div id="titulo2" align="left">Fotógrafos</div>
		<div id="menu">
			<span id="menuitem"><a href="historia.php">Historia</a></span>
			<span id="menuitem"><a href="fotografos.php">Fotógrafos</a></span>
			<span id="menuitem"><a href="tecnica.php">Técnica</a></span>
			<span id="menuitem"><a href="principal.php">Home</a></span>
		</div>
	<div id="linea" align="center"></div>
	<div id="cajaretratos" align="center">
		<span class= "retrato"><img height=150px" width="%" src="./retratos/capa.jpg"></span>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/bresson.jpg"></span>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/manray.jpg"></span>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/faas.jpg"></span>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/carter.jpg"></span>
		<a class= "referencias" href="RobertCapa.php">Robert Cappa</a>
		<a class= "referencias" href="henry.php">Henry Cartier-Bresson</a>
		<a class= "referencias" href="manray.php">Man Ray</a>
		<a class= "referencias" href="horst.php">Horst Faas</a>
		<a class= "referencias" href="kevin.php">Kevin Carter</a>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/mcurry.jpg"></span>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/sanz.jpg"></span>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/madoz.jpg"></span>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/annie.jpg"></span>
		<span class= "retrato"><img height=150px" width="%" src="./retratos/newton.jpg"></span>
		<a class= "referencias" href="steve.php">Steve McCurry</a>
		<a class= "referencias" href="rafael.php">Rafael Sanz Lobato</a>
		<a class= "referencias" href="madoz.php">Chema Madoz</a>
		<a class= "referencias" href="annie.php">Annie Leivovitz</a>
		<a class= "referencias" href="helmut.php">Helmut Newton</a>
	</div>
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
