<!DOCTYPE html>
 <html>
 <head>
 	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
 	<script type="text/javascript" src="../js/expresiones_regulares.js"> </script>
 	<script type="text/javascript" src="js/validar_tienda_repostera.js"> </script>
 </head>
 <body>
 	<div class="formu_ingreso_datos">
 		<form action="tienda_repostera_modificar1.php" method="post" name="formu">
 			<h2>MODIFICAR DATOS</h2>
 			{foreach item=r from=$tienda_repostera}
 			<input type="text" name="nombre" value="{$r.nombre}" size="15" placeholder="Nombre" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="direccion" value="{$r.direccion}" size="15" placeholder="Direccion" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="pag_web" value="{$r.pag_web}" size="15" placeholder="Pagina Web" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="telefono" value="{$r.telefono}" size="15" placeholder="Telefono" >
				</p>
				<p>
					<input type="hidden" name="accion" value="">
					<input type="button" value="Aceptar" onclick="validar();" class="boton2">
					<input type="button" value="Cancelar" onclick="javascript:location.href='tienda_repostera.php';" class=boton2>
				</p>
				{/foreach}
				<p><b>(*)Campos Oblogatorios</b></p>
 		</form>
 	</div>
  </body>
 </html>