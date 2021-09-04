<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		var ventanaCalendario=false
		 function imprimir() {
		 	if (confirm(' Desea Imprimir? ')) {
		 		window.print();
		 	}
		 }
	</script>
</head>
<body style='cursor: pointer;cursor: hand' onClick='imprimir();'>
	<table width="100%" border="0">
		<tr>
			<td><img src="../tienda_repostera/logos/{$logo_tienda}" width="70%"></td>
			<td align="center" width="80%"><h1> PRODUCTO_PRECIOS</h1></td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
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
		<b>Fecha:</b> {$fecha}
	</center>
  </body>
</html>