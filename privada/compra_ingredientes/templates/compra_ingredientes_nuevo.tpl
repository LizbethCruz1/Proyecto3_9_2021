<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/validar_compra_ingredientes.js"></script>
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="compra_ingredientes_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR COMPRA</h2>
			<b>Tienda</b>(*)
			<select name="id_tienda_repostera">
				<option value="">----seleccione-----<	
				</option>
				{foreach item=r from=$tienda_repostera}
					<option value="{$r.id_tienda_repostera}">{$r.nombre}</option>
				{/foreach}
			</select>
			<p>
				<input type="text" name="fec_compra" size="15" placeholder="Fecha de Compra" >(*)
			</p>
			<p>
				<input type="text" name="mont_compra" size="15" placeholder="Monto de Compra" >(*)
			</p>
			<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				<input type="button" value="Cancelar" onclick="javascript:location.href='compra_ingredientes.php';" class="boton2">
			</p>
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
  </body>
</html>