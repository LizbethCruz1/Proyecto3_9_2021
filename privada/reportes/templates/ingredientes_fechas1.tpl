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
				<img src="../img/{$logo_tienda}" width="70%">
			</td>
			<td align="center" width="80%">
				<h1> INGREDIENTES CON FECHAS</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table>
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>PRECIO</th><th>FECHA INSERCION</th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$ingredientes_fechas1}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre}</td>
				<td>{$r.precio}</td>
				<td>{$r.fec_insercion}</td>
				{assign var="b" value="`$b+1`"}
				{/foreach}
			</tr>
		</table>
		<br><br>
	</center>
	<b>DEL:</b>{$fecha1} <b>A</b> {$fecha2}
  </body>
</html>