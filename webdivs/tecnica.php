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
		<div id="cajatecnica" align="center">
			<div id="cajaluz">
				<div>
					<p style= "width: 600px; float: right;" class= "tecnicaD">La iluminación es clave a la hora de captar buenas imágenes, de hecho, sin luz no hay foto. Tan importante es la luz para la fotografía que la misma palabra lo aclara: “foto” en griego significa “luz” y “grafía” significa escribir. Fotografiar sin luz es como escribir sin tinta. Por esto, la luz es el elemento en torno al cual gira toda la técnica fotográfica. Para ello, se suele hablar de cuatro propedades de la luz: dirección, intensidad calidad de la luz (suavidad o dureza) y temperatura.</p>
				</div>
				<div>
					<img style="float:left;" height="210px" widt="%" src="./tecnica/prism.jpg">
				</div>
			</div>
			<div id="cajaencuadre">
				<div>
					<p  style= "width: 550px; float: left;" class="tecnicaI">La exposición es la acción de someter un elemento fotosensible (en cámaras digitales el sensor) a la acción de la luz, que, como ya vimos, es la piedra angular de la fotografía.Por tanto, la correcta exposición de una fotografía será el primer paso para lograr una buena foto, al margen de una mejor o peor composición y de una mayor o menor belleza de lo retratado.Y, por consiguiente, una mala exposición será el primer gran error que deberemos evitar cuando fotografiemos.Los elementos que determinan la exposición son: apertura del diafragma, velocidad de obturación y sensibilidad ISO.</p>
				</div>
				<div>
					<img style="float:right;" height="210px" widt="%" src="./tecnica/triangle.jpg">
				</div>
			</div>
			<div id="cajaexposicion">
				<div>
					<p style= "width: 510px; float: right;" class= "tecnicaD">Las fotos primero se sacan con los ojos para luego, mediante la cámara, inmortalizarlas en papel (o en un archivo digital). La diferencia radica en que la visión no tiene límites establecidos (o se ignoran) mientras las cámaras fotográficas sí y dichos límites, conocidos como bordes, son el marco de toda foto.La forma en que se usan dichos limites a la hora de encuadrar (componer)  fotografías pueden cambiar radicalmente el sentido de la imagen. Conocer los secretos del encuadre se convierte en casi una obligación.</p>
				</div>
				<div>
					<img style="float:left;" height="210px" widt="%" src="./tecnica/aurea.jpg">
				</div>	
			</div>
			<div id="cajaedicion">
				<div>
					<p style= "width: 600px; float: left;" class="tecnicaI">La edición fotográfica es seleccionar un conjunto de imágenes con el fin de contar una historia con un lenguaje visual. La idea es montar el storyboard. A este trabajo le sigue el trabajo de retoque, bien químico o digital. En la era de la democratización de la fotografía y de los medios digitales para su producción y manipulación se ha hablado de pictorialismo, fotoilustración e incluso de era de la posfotografía.</p>
				</div>
				<div>
					<img style="float:right;" height="210px" widt="%" src="./tecnica/edit.jpg">
				</div>	
			
			</div>

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
