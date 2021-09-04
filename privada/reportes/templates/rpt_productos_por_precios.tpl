<!DOCTYPE html>
<html lang="esp">
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<meta charset="UTF-8">
	{literal}
	<script type="text/javascript">
		function validar(){
			precio = document.formu.precio.value;
			if (document.formu.precio.value == ""){
				alert("Por favor seleccione el precio");
				document.formu.precio.focus();
				return;;
			}
			ventanaCalendario = window.open("rpt_productos_por_precios1.php?precio=" + precio , "calendario", "width=600,height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=No,status=No,realizable=YES,location=NO")
		}
	</script>
	{/literal}
</head>
<body>
	<div class="formu_ingreso_datos">
		<h2> RPT DE CLIENTES POR PRECIO</h2>
		<form method="post" name="formu">
			<p>
				<b>*Seleccione Precio</b>
				<select name="precio">
					<option value="">--Seleccione--</option>
					<option value="35">35</option>
					<option value="60">60</option>
					<option value="120">120</option>
					<option value="40">40</option>
					<option value="20">20</option>
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