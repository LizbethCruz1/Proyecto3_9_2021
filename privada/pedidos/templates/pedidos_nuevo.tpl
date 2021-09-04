<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/validar_pedidos.js"></script>
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="pedidos_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR PEDIDO</h2>
			<b>Cliente (*)</b>
			<select name="id_cliente">
				<option value="">----seleccione-----<	
				</option>
				{foreach item=r from=$clientes}
					<option value="{$r.id_cliente}">{$r.nombre}-{$r.ap}-{$r.am}</option>
				{/foreach}
			</select>
			<p>
				<input type="text" name="mont_pedido" size="15" placeholder="Monto del Pedido" >(*)
			</p>
			<p>
				<input type="text" name="entrega" size="15" placeholder="Entregado" >(*)
			</p>
			<p>
				<input type="text" name="fec_pedido" size="15" placeholder="Fecha del Pedido" >(*)
			</p>
			<p>
				<input type="text" name="fec_entrega" size="15" placeholder="Fecha de la Entrega" >(*)
			</p>
			<p>
				<input type="text" name="mont_total" size="15" placeholder="Monto Total" >(*)
			</p>
			<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				<input type="button" value="Cancelar" onclick="javascript:location.href='pedidos.php';" class="boton2">
			</p>
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
  </body>
</html>