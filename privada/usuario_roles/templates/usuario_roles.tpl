<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="titulo_listado">
		<h1>USUARIO ROLES</h1>
	</div>
	<div class="titulo_nuevo">
				<form name="formNuevo" method="post" action="usuario_rol_nuevo.php">
					<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
					</a>
				</form>
			</div>

	<center >
		<table class="listado">
			
			<tr>
				<th>NRO</th><th>USUARIO</th><th>ROL</th>
				<th><img src="../Reposteria/modificar.jpeg"></th><th><img src="../Reposteria/eliminar.jpeg"></th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$usuario_roles}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.id_usuario}</td>
				<td>{$r.id_rol}</td>
		
				<td align="center">
					<form name="formModif{$r.id_usuario_rol}" method="post" action="usuario_rol_modificar.php">
						<input type="hidden" name="id_usuario_rol" value="{$r.id_usuario_rol}">
						
						<a href="javascript:document.formModif{$r.id_usuario_rol}.submit();" title="Modificar Usuario Roles">Modificar>> </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi{$r.id_usuario_rol}" method="post" action="usuaio_rol_eliminar.php">
						<input type="hidden" name="id_usuario_rol" value="{$r.id_usuario_rol}">
						<a href="javascript:document.formElimi{$r.id_usuario_rol}.submit();" title="Eliminar del Sistema" onclick="javascript:return(confirm(' Desea realmente Eliminarlo ..?')); location.href='usuario_rol_eliminar.php'">
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