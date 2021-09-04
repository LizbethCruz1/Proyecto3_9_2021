<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		var ventanaCalendario=false
			function imprimir() {
				if (confirm(' Desea Imprimir ?')) {
					window.print();
				}
			}
	</script>
</head>
<body style='cursor: pointer;cursor: hand' onclick='imprimir();'>
	<table width="100%" border="0">
		<tr>
			<td>
				<img src="../../img/{$logo_tienda}" width="70%">
			</td>
			<td align="center" width="80%">
				<h1> PRODUCTOS -- PRECIO </h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>CODIGO</th><th>NOMBRE</th><th>PRECIO</th><th>DESCRIPCION</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$productos_por_precios1}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.codigo}</td>
				<td>{$r.nombre}</td>
				<td>{$r.precio}</td>
				<td>{$r.descrip_producto}</td>
				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> {$fecha}
	</center>
  </body>
</html>