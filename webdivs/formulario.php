<?php

	$conexion=new mysqli('localhost','root','','photoweb');
	$conexion->set_charset("utf8");
	session_start();
	$meta=false;
	function pagina($resultadoregistro,$meta)
	{
		$bool=$meta;
		echo'<!DOCTYPE html>
		<html>
		<meta>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<link rel="stylesheet" type="text/css" href="estilo.css">';
				if($bool==true)
				{
					echo '<META HTTP-EQUIV="REFRESH" CONTENT="1.5;URL=http://localhost/webdivs/login.php">';
				}
				echo' <title></title>
			</head>
			<body id="bodyformulario"> 
			<div id="contenedorshutter">
				<div id="nombreshutter"><p>Shutter</p></div>
			</div>
			<div id="cajaformulario">
				<div>
					<form action="formulario.php" method="post">
						<span class="objetosformulario">
								Usuario: <input style="width:85%;text-align:center;" type="text" name="usuario"><br>
								Contraseña: <input style="width:85%;text-align:center;" type="password" name="password"><br>
								Confirmar contraseña: <input style="width:85%;text-align:center;"  type="password" name="password2"><br>
								e-mail: <input style="width:85%;text-align:center;" type="text" name="mail"><br>
						</span>
						<button style="margin:auto; margin-top:5px;" type="submit">Completar registro</button>
					</form>
					<span id="resultadoregistro">'.$resultadoregistro.'</span>
				</div>
			</div>
			</body>
		</html>';
	}
	if(isset($_POST['usuario']))
	{
		$query="SELECT COUNT(*) FROM usuarios WHERE usuario='".$_POST['usuario']."';";
		$resultado_query=$conexion->query($query);
		$fila=$resultado_query->fetch_assoc();
		if($fila['COUNT(*)']==1)
		{
			pagina("Ese nombre de usuario ya existe :(",$meta);
		}
		else
		{
			if(($_POST['password'])==($_POST['password2']))
			{
				$query2="INSERT INTO usuarios (usuario, contrasenya, ) VALUES ('".$_POST['usuario']."','".$_POST['password']."','".$_POST['mail']."');";
				$conexion->query($query2);
				$meta=true;
				pagina("Registro completo :D",$meta);
			}
			else
			{
				pagina("Los campos de contraseña no coinciden :/", $meta);
			}	
		}
	}	
	else
	{
		pagina("",$meta);
	}
	unset($_POST['usuario']);
	unset($_POST['contraenya']);
	if(isset($_SESSION['usuario']))
	{
		echo '<META HTTP-EQUIV="REFRESH" CONTENT="0;URL=http://localhost/webdivs/principal.php">';
	}
?>



