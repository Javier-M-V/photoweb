<?php

	$conexion=new mysqli('localhost','root','','photoweb');
	$conexion->set_charset("utf8");
	session_start();
	function pagina($resultadoregistro)
	{
		/*arreglar el meta, que así explota*/
		echo'<!DOCTYPE html>
		<html>
		<meta>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<link rel="stylesheet" type="text/css" href="estilo.css">
				'./*<META HTTP-EQUIV="REFRESH" CONTENT="1.5;URL=http://localhost/dashboard/web/login.php">*/.'
				<title></title>
			</head>
			<body id="bodyformulario"> 
			<div id="nombreshutter"><p>Shutter</p></div>
			<div id="cajaformulario">
				<div style="margin-top: 20px;">
					<form action="formulario.php" method="post">
						<span class="objetosformulario">
								Usuario: <input type="text" name="usuario"><br>
								Contraseña: <input  type="password" name="password"><br>
								Confirmar contraseña: <input  type="password" name="password2"><br>
								e-mail: <input type="text" name="user"><br>
						</span>
						<button style="margin:auto; margin-top:5px;" type="submit">Completar registro</button>
					</form>
					<span id="resultadoregistro">'.$resultadoregistro.'</span>
				</div>
			</div>
			</body>
		</html>';
	}/*SELECT count (*) FROM USUARIOS WHERE USER igual  USER*/
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
			pagina("Ese nombre de usuario ya existe :(");		
		}
		else
		{
			$query="INSERT INTO usuarios (usuario, contrasenya) VALUES ('".$_POST['usuario']."','".$_POST['password']."');";
			$conexion->query($query);
			pagina("Registro completo :D");
		}
		unset($_POST['usuario']);
		unset($_POST['contraenya']);
	}
	else
	{
		pagina("");
	}
?>



