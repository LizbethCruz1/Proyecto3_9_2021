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
			<td><img src="../img/{$logo_tienda}" width="70%"></td>
			<td align="center" width="80%"><h1> PROVEEDORES </h1></td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>PROVEEDOR</th><th>TELEFONO</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$rpt_proveedores}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre}</td>
				<td><i>{$r.telefono}</i></td>
				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> {$fecha}
	</center>
  </body>
</html>