<!DOCTYPE html>
 <html>
 <head>
 	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
 	<script type="text/javascript" src="../js/expresiones_regulares.js"> </script>
 	<script type="text/javascript" src="js/validar_compra_ingredientes.js"> </script>
 </head>
 <body>
 	<div class="formu_ingreso_datos">
 		<form action="compra_ingredientes_modificar1.php" method="post" name="formu">
 			<h2>MODIFICAR DATOS</h2>
 			<b>Tienda (*)</b>
 			  <select name="id_tienda_repostera">
				{foreach item=r from=$tienda_repostera}
					<option value="{$r.id_tienda_repostera}">{$r.nombre}</option>
				{/foreach}
				{foreach item=r from=$tienda_reposteras}
					<option value="{$r.id_tienda_repostera}">{$r.nombre}</option>
				{/foreach}
			  </select>
			{foreach item=r from=$compra_ingredientes}
			<p>
 				<input type="text" name="fec_compra" value="{$r.fec_compra}" size="15" placeholder="Fecha de Compra" onkeyup="this.value=this.value.toUpperCase()">(*)
			</p>
			<p>
				<input type="text" name="mont_compra" value="{$r.mont_compra}" size="15" placeholder="Monto de Compra" >(*)
			</p>
				<p>
				   <input type="hidden" name="accion" value="">
				   	<input type="hidden" name="id_compra_ingrediente" value="{$r.id_compra_ingrediente}">
					<input type="button" value="Aceptar" onclick="validar();" class="boton2">
					<input type="button" value="Cancelar" onclick="javascript:location.href='compra_ingredientes.php';" class=boton2>
				</p>
				{/foreach}
				<p><b>(*)Campos Oblogatorios</b></p>
 		</form>
 	</div>
  </body>
 </html>