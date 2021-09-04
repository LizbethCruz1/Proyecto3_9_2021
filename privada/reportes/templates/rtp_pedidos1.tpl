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
			<td align="center" width="80%"><h1> PEDIDOS DEL CLIENTE</h1></td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>CLIENTE</th><th>FECHA PEDIDO</th><th>FECHA ENTREGA</th><th>MONTO TOTAL</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$pedidos}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre} {$r.ap} {$r.am}</td>
				<td>{$r.fec_pedido}</td>
				<td>{$r.fec_entrega}</td>
				<td>{$r.mont_total}</td>
				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> {$fecha}
	</center>
  </body>
</html>