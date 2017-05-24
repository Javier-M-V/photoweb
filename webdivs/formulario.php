<?php

$conexion=new mysqli('localhost','root','','photoweb');
$conexion->set_charset("utf8");

function pagina($mensaje)
{
	echo'<!DOCTYPE html>
		<html>

		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
			<link rel="stylesheet" type="text/css" href="estilo.css">
			<title></title>
		</head>
		<body id="bodyformula"> 
		<div id="formula">
			<div style="margin-top: 20px;">
			<form action="formulario.php" method="post">
				<span class="objetosformulario">
						Usuario: <input type="text" name="usuario"><br>
						Contraseña: <input  type="password" name="password"><br>
						Confirmar contraseña: <input  type="password" name="password2"><br>
						e-mail: <input type="text" name="user"><br>
				</span>
				<button style="margin:auto;" type="submit">Completar registro</button>
			</form>
			<div>'.$mensaje.'</div>
				</body>
			</html>';
}
if(isset($_POST['usuario']))
{

	$query="SELECT * FROM usuarios;";
	$resultado_query=$conexion->query($query);
	$control=false;
	while($fila=$resultado_query->fetch_assoc())
	{
		if($fila['usuario']==$_POST['usuario'])
		{
			$control=true;
			break;

		}
	}
	if($control==true)
	{
		pagina("Ese usuario ya existe");		
	}
	else
	{
		$query="INSERT INTO usuarios (usuario, contrasenya) VALUES ('".$_POST['usuario']."','".$_POST['password']."');";
		$conexion->query($query);
		pagina("Usuario registrado correctamente");

	}
	unset($_POST['usuario']);
	unset($_POST['contraenya']);
}
else
{

	pagina("");
		//if($_POST['usuario']=="")
			//unset($_POST['usuario']);
}
?>



