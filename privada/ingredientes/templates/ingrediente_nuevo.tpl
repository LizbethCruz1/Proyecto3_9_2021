<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<script type="text/javascript" src="../js/expresiones_regulares.js"> </script>
	<script type="text/javascript" src="js/validar_ingrediente.js"> </script>
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="ingrediente_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR INGREDIENTE</h2>
				<input type="text" name="nombre" size="15" placeholder="Nombre" onkeyup="this.value=this.value.toUpperCase()">(*)
				<p>
					<input type="text" name="descrip_ingrediente" size="15" placeholder="descrip_ingrediente" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="precio" size="15" placeholder="Precio" >
				</p>
				<p>
					<input type="hidden" name="accion" value="">
					<input type="button" value="Aceptar" onclick="validar();" class="boton2">
					<input type="button" value="Cancelar" onclick="javascript:location.href='ingredientes.php';" class="boton2">
				</p>
				<p><b>(*)Campos Oblogatorios</b></p>
		</form>
	</div>
  </body>
</html>