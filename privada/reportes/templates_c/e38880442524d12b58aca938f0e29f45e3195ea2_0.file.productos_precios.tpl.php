<?php
/* Smarty version 3.1.36, created on 2021-08-11 23:39:40
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\reportes\templates\productos_precios.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_61145fbc0c9180_48028021',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e38880442524d12b58aca938f0e29f45e3195ea2' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\reportes\\templates\\productos_precios.tpl',
      1 => 1625220466,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61145fbc0c9180_48028021 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
">
	<?php echo '<script'; ?>
 type="text/javascript">
		var ventanaCalendario=false
			function imprimir() {
				ventanaCalendario = window.open("productos_precios1.php", "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO, resizable=YES,location=NO")
			}
	<?php echo '</script'; ?>
>
</head>
<body>
	<table width="100%" border="0">
		<tr>
			<td align="center"><h1> PRODUCTOS_PRECIOS</h1></td>
		</tr>
	</table>
	<br>

	<center>
		<table class="listado">
			<tr>
				<th>NRO</th><th>PRODUCTO</th><th>PRECIO</th><th>PORCIONES</th><th>FECHA INSERCION</th>
			</tr>
			<?php $_smarty_tpl->_assignInScope('b', "1");?>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['productos_precios']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			<tr>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['precio'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['cant_porsiones'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['fec_insercion'];?>
</td>
				<?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
			</tr>
			<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		</table>
		<br><br>
		<h2>
			<input type="radio" name="seleccionar" onclick="javascript:imprimir()">Imprimir</td>
		</h2>
	</center>
  </body>
</html><?php }
}
