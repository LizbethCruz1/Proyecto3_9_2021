<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		var ventanaCalendario=false
			function imprimir() {
				if (confirm(' Desea Imprimir ?')){
					window.print();	
				}
			}
	</script>
</head>
<body style='cursor: pointer;cursor: hand' onclick='imprimir()'>
	<table width="100%" border="0">
		<tr>
			<td>
				<img src="../../img/{$logo_tienda}" width="70%">
			</td>
			<td align="center" width="80%">
				<h1> FICHA TECNICA PROVEEDOR</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<td>
					<table border="0">
						{foreach item=r from=$proveedor}
						<tr>
							<th align="right">Nombres</th><th>:</th>
							<td><input type="text" name="nombre" value="{$r.nombre}" disabled="">  </td>
						</tr>
						<tr>
							<th align="right">Direccion</th><th>:</th>
							<td><input type="text" name="direccion" value="{$r.direccion}" disabled="">  </td>
						</tr>
						<tr>
							<th align="right">Telefono</th><th>:</th>
							<td><input type="text" name="telefono" value="{$r.telefono}" disabled="">  </td>
						</tr>
						
						{/foreach}
					</table>
				</td>
			</tr>
		</table>
	</center>
  </body>
</html>