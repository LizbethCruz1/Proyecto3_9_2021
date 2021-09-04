<!DOCTYPE html>
<html lang="esp">
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css">
	<meta charset="UTF-8">
	<script type="text/javascript" src="../../ajax.js"></script>
	<script type="text/javascript">
		function buscar() {
			var d1, d2, contenedor, ajax, url, param;
			contenedor = document.getElementById('proveedores1');
			d1 = document.formu.nombre.value;
			d2 = document.formu.telefono.value;
			ajax = nuevoAjax();
			url = "ajax_buscar_proveedor.php"
			param = "nombre="+d1+"&telefono="+d2;
			//alert(param);
			ajax.open("POST", url, true);
			ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
			ajax.onreadystatechange = function() {
				if (ajax.readyState == 4 ) {
					contenedor.innerHTML = ajax.responseText;
				}
			}
			ajax.send(param);
		}

		function mostrar(id_proveedor) {
			var d1, ventanaCalendario;
			d1 = id_proveedor;
			//alert(id_proveedore);
			ventanaCalendario = window.open("fichas_tecnicas_proveedores1.php?id_proveedor=" + d1, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
		}
	</script>
</head>
  <body>
	<!---------BUSCADOR---------------->
	<center>
		<h1> FICHAS TECNICAS DE PROVEEDORES</h1>
		<form action="#" method="post" name="formu">
			<table border="1" class="listado">
				<tr>
					<th>
						<b>Nombre</b><br />
						<input type="text" name="nombre" value="" size="20" onKeyUp="buscar()">
					</th>
					<th>
						<b>Telefono</b><br />
						<input type="text" name="telefono" value="" size="10" onKeyUp="buscar()">
					</th>
				</tr>
			</table>
		</form>
	</center>
	<!-------BUSCADOR---->
	<center>
		<div id="proveedores1">
		</div>
	</center>
  </body>
</html>