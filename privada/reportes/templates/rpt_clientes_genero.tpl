<!DOCTYPE html>
<html lang="esp">
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<meta charset="UTF-8">
	{literal}
	<script type="text/javascript">
		function validar(){
			genero = document.formu.genero.value;
			if (document.formu.genero.value == ""){
				alert("Por favor seleccione el genero");
				document.formu.genero.focus();
				return;;
			}
			ventanaCalendario = window.open("rpt_clientes_genero1.php?genero=" + genero , "calendario", "width=600,height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=No,status=No,realizable=YES,location=NO")
		}
	</script>
	{/literal}
</head>
<body>
	<div class="formu_ingreso_datos">
		<h2> RPT DE CLIENTES POR GENERO</h2>
		<form method="post" name="formu">
			<p>
				<b>*Seleccione genero</b>
				<select name="genero">
					<option value="">--Seleccione--</option>
					<option value="T">Todos</option>
					<option value="Femenino">Femenino</option>
					<option value="Masculino">Masculino</option>
				</select>
			</p>
			<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton">
			</p>
		</form>
	</div>
  </body>
</html>