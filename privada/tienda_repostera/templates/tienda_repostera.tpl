<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="titulo_listado">
		<h1>TIENDA</h1>
	</div>
	<div class="titulo_nuevo">
				<form name="formNuevo" method="post" action="tienda_repostera_nuevo.php">
					<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
					</a>
				</form>
			</div>

	<center >
		<table class="listado">
			
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>DIRECCION</th><th>TELEFONO</th><th>PAGINA WEB</th>
				<th><img src="../Reposteria/modificar.jpeg"></th><th><img src="../Reposteria/eliminar.jpeg"></th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=t from=$tienda_repostera}
			<tr>
				<td align="center">{$b}</td>
				<td>{$t.nombre}</td>
				<td>{$t.direccion}</td>
				<td>{$t.telefono}</td>
				<td>{$t.pag_web}</td>
		
				<td align="center">
					<form name="formModif{$t.id_tienda_repostera}" method="post" action="tienda_repostera_modificar.php">
						<input type="hidden" name="id_tienda_repostera" value="{$t.id_tienda_repostera}">
						
						<a href="javascript:document.formModif{$t.id_tienda_repostera}.submit();" title="Modificar Tienda">Modificar>> </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi{$t.id_tienda_repostera}" method="post" action="tienda_repostera_eliminar.php">
						<input type="hidden" name="id_tienda_repostera" value="{$t.id_tienda_repostera}">
						<a href="javascript:document.formElimi{$t.id_tienda_repostera}.submit();" title="Eliminar Tienda del Sistema" onclick="javascript:return(confirm(' Desea realmente Eliminar la Tienda..?')); location.href='tienda_repostera_eliminar.php'">
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