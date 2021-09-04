<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<script type="text/javascript">
		var ventanaCalendario=false
			function imprimir() {
				ventanaCalendario = window.open("rpt_pedidos1.php", "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO, resizable=YES,location=NO")
			}
	</script>
</head>
<body>
	<table width="100%" border="0">
		<tr>
			<td align="center"><h1> PEDIDOS DEL CLIENTE</h1></td>
		</tr>
	</table>
	<br>

	<center>
		<table class="listado">
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