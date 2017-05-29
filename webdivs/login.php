
<?php
	session_start();
	$conexion=new mysqli('localhost','root','','photoweb');
	$conexion->set_charset("utf8");
	$control=false;
	function pagina($resultado_login,$control)
	{
		echo
		'<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>';
				if($control==true)
				{
					echo '<META HTTP-EQUIV="REFRESH" CONTENT="1.5;URL=http://localhost/dashboard/web/principal.php">';
				}
				echo '<title></title>
				<link rel="stylesheet" type="text/css" href="estilo.css">
				<style>
				</style>
			</head>
			<body id="cuerpo">
			<div>
				<div id="cajalogin">
					<span style="text-align: center; height:30px; background-color: hsl(0, 0%, 40%); color:hsl(0, 0%, 90%);padding-top: 8px; padding-bottom: 3px;width: 100%; float: left;border-radius: 3px 3px 0px 0px;">Inicia sesión en Shutter</span>
					<span style="height: 1px; width: 100%; background-color: hsl(0, 0%, 90%);margin-bottom: 7px; float: left"></span>
					<span style="height:130px;float: left; ">
						<span style="margin:auto;margin-top: 1px;margin-bottom: 10px;">
							<img height="35px" width="%" src="obturador.jpg">
						</span>
							<form action="login.php" method="post">
								<input style="width: 80%;text-align: center;" type="text" name="usuario">
								<input style="width: 80%;text-align: center;" type="password" name="password">
								<button style="width: 30%;text-align: center; margin:auto; margin-top:1px;" type="submit">Login</button>
							</form>
						</span>
					<span style="text-align: center; height:30px; background-color: hsl(0, 0%, 40%); color:hsl(0, 0%, 90%);  padding-top: 8px;width: 100%; float: left;border-radius: 0px 0px 3px 3px;">
						<a class="referencias2" href="formulario.php">¿Sin cuenta? Regístrate>></a>
					</span>
				</div>
				<div id="mensaje_login">'.$resultado_login.'</div>
			</body>
		</html>';
	}
	if(isset($_POST['usuario']))
	{
		$query="SELECT * FROM usuarios;";
		$resultado_query=$conexion->query($query);
		while($fila=$resultado_query->fetch_assoc())
		{
			if($fila['usuario']==$_POST['usuario']&&$fila['contrasenya']==$_POST['password'])
			{
				$control=true;
				$_SESSION['usuario']=$_POST['usuario'];
				pagina("Bienvenido ".$_SESSION['usuario'],$control,$control);
				break;
			}
		}
		if($control==false)
		{
			pagina("Usuario/contraseña no coinciden con nuestras registros",$control);
		}
	}
	else
	{
		pagina("",$control);
	}
?>
