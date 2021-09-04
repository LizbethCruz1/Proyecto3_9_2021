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
				<h1> CLIENTES -- GENERO </h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>AP</th><th>AM</th><th>NOMBRES</th><th>GENERO</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$clientes_genero1}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre}</td>
				<td>{$r.ap}</td>
				<td>{$r.am}</td>
				<td>{$r.genero}</td>
				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> {$fecha}
	</center>
  </body>
</html>