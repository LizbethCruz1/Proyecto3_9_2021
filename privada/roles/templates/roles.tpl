<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="titulo_listado">
		<h1>ROLES</h1>
	</div>
	<div class="titulo_nuevo">
				<form name="formNuevo" method="post" action="rol_nuevo.php">
					<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
					</a>
				</form>
			</div>

	<center >
		<table class="listado">
			
			<tr>
				<th>NRO</th><th>ROL</th><!--th>CLAVE</th>-->
				<th><img src="../Reposteria/modificar.jpeg"></th><th><img src="../Reposteria/eliminar.jpeg"></th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$roles}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.rol}</td>
				<!--<td>{$r.clave}</td>-->
		
				<td align="center">
					<form name="formModif{$r.id_rol}" method="post" action="rol_modificar.php">
						<input type="hidden" name="id_rol" value="{$r.id_rol}">
						
						<a href="javascript:document.formModif{$r.id_rol}.submit();" title="Modificar Roles">Modificar>> </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi{$r.id_rol}" method="post" action="rol_eliminar.php">
						<input type="hidden" name="id_rol" value="{$r.id_rol}">
						<a href="javascript:document.formElimi{$r.id_rol}.submit();" title="Eliminar Rol" onclick='javascript:return(confirm(" Desea realmente Eliminar el Rol:::{$r.rol}?"));'>Eliminar>>
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