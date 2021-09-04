<?php
/* Smarty version 3.1.36, created on 2021-08-13 07:45:27
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\reportes\templates\fichas_tecnicas_proveedores.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_611623170afab2_11686525',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '162d93c693e500f9cd0c96e0b05ccc5ffd9b403e' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\reportes\\templates\\fichas_tecnicas_proveedores.tpl',
      1 => 1628840715,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_611623170afab2_11686525 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
<head>
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
	<meta charset="UTF-8">
	<?php echo '<script'; ?>
 type="text/javascript" src="../../ajax.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript">
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
	<?php echo '</script'; ?>
>
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
</html><?php }
}
