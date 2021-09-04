<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="titulo_listado">
		<h1>PEDIDOS</h1>
	</div>
	<div class="titulo_nuevo">
				<form name="formNuevo" method="post" action="pedidos_nuevo.php">
					<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
					</a>
				</form>
			</div>

	<center >
		<table class="listado">
			
			<tr>
				<th>NRO</th><th>CLIENTE</th><th>MONTO_PEDIDO</th><th>ENTREGA</th><th>MONTO_TOTAL</th>
				<th><img src="../Reposteria/modificar.jpeg"></th><th><img src="../Reposteria/eliminar.jpeg"></th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$pedidos}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.nombre} {$r.ap} {$r.am} </td>
				<td>{$r.mont_pedido}</td>
				<td>{$r.entrega}</td>
				<td>{$r.mont_total}</td>
		
				<td align="center">
					<form name="formModif{$r.id_pedido}" method="post" action="pedido_modificar.php">
						<input type="hidden" name="id_pedido" value="{$r.id_pedido}">
						<input type="hidden" name="id_cliente" value="{$r.id_cliente}">
						<a href="javascript:document.formModif{$r.id_pedido}.submit();" title="Modificar Pedidos">Modificar>> </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi{$r.id_pedido}" method="post" action="pedido_eliminar.php">
						<input type="hidden" name="id_pedido" value="{$r.id_pedido}">
						<a href="javascript:document.formElimi{$r.id_pedido}.submit();" title="Eliminar Pedido en Sistema" onclick="javascript:return(confirm(' Desea realmente Eliminar el Pedido..?')); location.href='pedido_eliminar.php'">
							Eliminar>>
						</a>
					</form>
				</td>
			{assign var="b" value="`$b+1`"}
			{/foreach}	
			</tr>
		</table>
	</center>
</body>
</html>