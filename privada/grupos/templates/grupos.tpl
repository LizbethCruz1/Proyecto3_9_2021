<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="titulo_listado">
		<h1>GRUPOS</h1>
	</div>
	<div class="titulo_nuevo">
				<form name="formNuevo" method="post" action="grupo_nuevo.php">
					<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
					</a>
				</form>
			</div>

	<center >
		<table class="listado">
			
			<tr>
				<th>NRO</th><th>GRUPO</th><!--th>CLAVE</th>--><!--th>PERSONA</th>-->
				<th><img src="../Reposteria/modificar.jpeg"></th><th><img src="../Reposteria/eliminar.jpeg"></th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$grupos}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.grupo}</td>
				<!--<td>{$r.clave}</td>-->
				<!--<td>{$r.ap} {$r.am} {$r.nombres}</td>-->
				<td align="center">
					<form name="formModif{$r.id_grupo}" method="post" action="grupo_modificar.php">
						<input type="hidden" name="id_grupo" value="{$r.id_grupo}">
						
						<a href="javascript:document.formModif{$r.id_grupo}.submit();" title="Modificar grupo">Modificar>> </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi{$r.id_grupo}" method="post" action="grupo_eliminar.php">
						<input type="hidden" name="id_grupo" value="{$r.id_grupo}">
						<a href="javascript:document.formElimi{$r.id_grupo}.submit();" title="Eliminar Grupo" onclick='javascript:return(confirm(" Desea realmente Eliminar al grupo:::{$r.grupo}?"));'>Eliminar>>
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