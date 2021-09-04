<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="titulo_listado">
		<h1>OPCIONES</h1>
	</div>
	<div class="titulo_nuevo">
				<form name="formNuevo" method="post" action="opcion_nuevo.php">
					<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
					</a>
				</form>
			</div>

	<center >
		<table class="listado">
			
			<tr>
				<th>NRO</th><th>GRUPO</th><th>OPCION</th>
				<th><img src="../Reposteria/modificar.jpeg"></th><th><img src="../Reposteria/eliminar.jpeg"></th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$opciones}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.id_grupo}</td>
				<td>{$r.opcion}</td>
		
				<td align="center">
					<form name="formModif{$r.id_opcion}" method="post" action="opcion_modificar.php">
						<input type="hidden" name="id_opcion" value="{$r.id_opcion}">
						
						<a href="javascript:document.formModif{$r.id_opcion}.submit();" title="Modificar Opciones">Modificar>> </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi{$r.id_opcion}" method="post" action="opcion_eliminar.php">
						<input type="hidden" name="id_opcion" value="{$r.id_opcion}">
						<a href="javascript:document.formElimi{$r.id_opcion}.submit();" title="Eliminar Opcion" onclick='javascript:return(confirm(" Desea realmente Eliminar la Opcion:::{$r.opcion}?"));'>Eliminar>>
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