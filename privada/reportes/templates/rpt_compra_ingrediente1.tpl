<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		var ventanaCalendario=false
			function imprimir(){
				if (confirm(' Desea Imprimir ?')) {
					window.print();
				}
			}
	</script>
</head>
<body style='cursor: pointer;cursor: hand' onClick='imprimir();'>
	<table width="100%" border="0">
		<tr>
			<td>
				<img src="../../img/{$logo_tienda}" width="70%">
			</td>
			<td align="center" width="80%">
				<h1> COMPRA INGREDIENTES</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table>
			<tr>
				<th>NRO</th><th>FECHA COMPRA</th><th>MONTO COMPRA</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$rpt_compra_ingrediente}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.fec_compra}</td>
				<td>{$r.mont_compra}</td>
				{assign var="b" value="`$b+1`"}
			{/foreach}
			</tr>
		</table>
		<br><br>
	</center>
	<b>DEL:</b>{$fecha1} <b>A</b> {$fecha2}
  </body>
</html>