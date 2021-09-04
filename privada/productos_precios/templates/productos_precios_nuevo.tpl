<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<script type="text/javascript" src="../js/expresiones_regulares.js"> </script>
	<script type="text/javascript" src="js/validar_productos_precios.js"> </script>
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="productos_precios_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR PRECIO DE PRODUCTO</h2>
				<input type="text" name="precio" size="15" placeholder="Precio">(*)
				<p>
					<input type="text" name="cant_porcion" size="15" placeholder="Cantidad de Porcion">(*)
				</p>
				<p>
					<input type="hidden" name="accion" value="">
					<input type="button" value="Aceptar" onclick="validar();" class="boton2">
					<input type="button" value="Cancelar" onclick="javascript:location.href='productos_precios.php';" class=boton2>
				</p>
				<p><b>(*)Campos Oblogatorios</b></p>
		</form>
	</div>
  </body>
</html>