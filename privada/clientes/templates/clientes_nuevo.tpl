<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<script type="text/javascript" src="../js/expresiones_regulares.js"> </script>
	<script type="text/javascript" src="js/validar_clientes.js"> </script>
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="clientes_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR PERSONA</h2>
				<p>
					<input type="text" name="nombre" size="15" placeholder="Nombres" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="ap" size="15" placeholder="Apellido Paterno" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="am" size="15" placeholder="Apellido Materno" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
				<input type="text" name="ci" size="15" placeholder="Carnet de Identidad">(*)
				</p>
				<p>
					<input type="text" name="direccion" size="15" placeholder="Direccion" onkeyup="this.value=this.value.toUpperCase()">
				</p>
				<p>
					<input type="text" name="telefono" size="15" placeholder="Telefono" >
				</p>
				<p>
					(*)<b>Genero</b><input type="radio" name="genero" value="F">Femenino<input type="radio" name="genero" value="M">Masculino
				</p>
				<p>
					<input type="hidden" name="accion" value="">
					<input type="button" value="Aceptar" onclick="validar();" class="boton2">
					<input type="button" value="Cancelar" onclick="javascript:location.href='clientes.php';" class=boton2>
				</p>
				<p><b>(*)Campos Oblogatorios</b></p>
		</form>
	</div>
  </body>
</html>