<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<script type="text/javascript">
		var ventanaCalendario=false
			function imprimir() {
				ventanaCalendario = window.open("productos_precios1.php", "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO, resizable=YES,location=NO")
			}
	</script>
</head>
<body>
	<table width="100%" border="0">
		<tr>
			<td align="center"><h1> PRODUCTOS_PRECIOS</h1></td>
		</tr>
	</table>
	<br>

	<center>
		<table class="listado">
			<tr>
				<th>NRO</th><th>PRODUCTO</th><th>PRECIO</th><th>PORCIONES</th><th>FECHA INSERCION</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$productos_precios}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre}</td>
				<td>{$r.precio}</td>
				<td>{$r.cant_porsiones}</td>
				<td>{$r.fec_insercion}</td>
				{assign var="b" value="`$b+1`"}
			</tr>
			{/foreach}
		</table>
		<br><br>
		<h2>
			<input type="radio" name="seleccionar" onclick="javascript:imprimir()">Imprimir</td>
		</h2>
	</center>
  </body>
</html>