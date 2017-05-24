<?php

$conexion=new mysqli('localhost','root','','photoweb');
$conexion->set_charset("utf8");

$peticion="SELECT * FROM fotografos WHERE nombre='Robert Cappa'";
$resultado=$conexion->query($peticion);
$fila=$resultado->fetch_assoc();
echo '<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<style>
	</style>
</head>
<body id="cuerpo">
<div>
	<div id="titulo2" align="left">'.$fila['nombre'].'</div>
	<div id="menu">
		<span id="menuitem"><a href="historia.html">Historia</a></span>
		<span id="menuitem"><a href="fotografos.html">Fotógrafos</a></span>
		<span id="menuitem"><a href="tecnica.html">Técnica</a></span>
		<span id="menuitem"><a href="principal.html">Home</a></span>
	</div>
<div id="linea" align="center"></div>
<div id="basefotografos" align="center">
	<div id="bannerizquierdo">
		<span id="retratobio"><img class="circulo" height=100px" width="100px" src="./retratos/capa.jpg"> </span>
		<span id="quote">"'.$fila['quote'].'"</span>
		<span id="bio">'.$fila['biografia'].'</span>
	</div>
	<div id="bannerderecho">
		<span class="foto_fotografo"><img height=%px" width="600px" src="./fotografos/cappa/omaha.jpg"></span>
		<span><img height=%px" width="400px" src="./fotografos/cappa/omaha.jpg"></span>
	</div>
</div>
<div id="linea" align="center"></div>
<div id="login" align="center" class="ancho"> <a href="login.html">Login</a></div>
</body>
</html>'
?>