<?php
	session_start();
?>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<link rel="icon" type="image/png" href="./obturador.jpg">
	<title>Shutter</title>
	<style>
	</style>
</head>
<body id="cuerpo">
	<?php
		$conexion=new mysqli('localhost','root','','photoweb');
		$conexion->set_charset("utf8");
		$peticion="SELECT * FROM fotografos WHERE nombre='Rafael Sanz Lobato'";
		$resultado=$conexion->query($peticion);
		$fila=$resultado->fetch_assoc();
	?>
	<div>
		<?php echo '<div id="titulo2" align="left">'.$fila['nombre'].'</div>'; ?>
		<div id="menu">
			<span class="menuitem"><a href="historia.php">Historia</a></span>
			<span class="menuitem"><a href="fotografos.php">Fotógrafos</a></span>
			<span class="menuitem"><a href="tecnica.php">Técnica</a></span>
			<span class="menuitem"><a href="principal.php">Home</a></span>
		</div>
	<div class="linea" align="center"></div>
	<div id="basefotografos" align="center">
		<div id="bannerizquierdo">
			<?php echo'<span id="retratobio"><img class="circulo" height=100px" width="100px" src="./retratos/'.$fila['rutaretrato'].'"> </span>';?>
			<?php echo '<span id="quote">"'.$fila['quote'].'"</span>';?>
			<?php echo '<span id="bio">'.$fila['biografia'].'</span>';?>
		</div>
		<?php
			$peticion="SELECT * FROM imagenes WHERE autor='Rafael Sanz Lobato' ORDER BY referencia_por_autor ASC";
			$resultado=$conexion->query($peticion);
		?>
		<div id="bannerderecho">
			<div id="derecho1"><!--bloque uno de fotos-->
				<?php
					$fila=$resultado->fetch_assoc();
					echo '<span class="foto_fotografo"><img height=100%" width="%px" src="./fotografos/sanz/'.$fila['ruta'].'"></span>';?>
			</div>
			<div id="derecho2"><!--bloque dos de fotos-->
				<div class="region_iz">
					<?php
					$fila=$resultado->fetch_assoc();
					echo '<span class="foto_fotografo"><img height="100%" width="%" src="./fotografos/sanz/'.$fila['ruta'].'"></span>';?>
				</div>
				<div class="region_der">
					<?php
					$fila=$resultado->fetch_assoc();
					echo '<span "class="foto_fotografo"><img height="100%" width="%" src="./fotografos/sanz/'.$fila['ruta'].'"></span>';?>
				</div>					
			</div>
			<div id="derecho3"><!--bloque tres de fotos-->
				<div class="region_iz2">
					<?php
					$fila=$resultado->fetch_assoc();
					echo '<span"class="foto_fotografo"><img height="100%" width="%" src="./fotografos/sanz/'.$fila['ruta'].'"></span>';?>
				</div>
				<div class="region_der2">
					<?php
					$fila=$resultado->fetch_assoc();
					echo '<span class="foto_fotografo"><img height="80%" width="%" src="./fotografos/sanz/'.$fila['ruta'].'"></span>';
					mysqli_close($conexion);?>
				</div>
			</div>
		</div>
	</div>
	<div class="linea" align="center"></div>
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