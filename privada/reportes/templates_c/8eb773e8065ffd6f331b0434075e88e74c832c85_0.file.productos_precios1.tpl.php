<?php
/* Smarty version 3.1.36, created on 2021-08-11 23:39:48
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\reportes\templates\productos_precios1.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_61145fc494c3f9_24776947',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8eb773e8065ffd6f331b0434075e88e74c832c85' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\reportes\\templates\\productos_precios1.tpl',
      1 => 1625220503,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61145fc494c3f9_24776947 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<?php echo '<script'; ?>
 type="text/javascript">
		var ventanaCalendario=false
		 function imprimir() {
		 	if (confirm(' Desea Imprimir? ')) {
		 		window.print();
		 	}
		 }
	<?php echo '</script'; ?>
>
</head>
<body style='cursor: pointer;cursor: hand' onClick='imprimir();'>
	<table width="100%" border="0">
		<tr>
			<td><img src="../tienda_repostera/logos/<?php echo $_smarty_tpl->tpl_vars['logo_tienda']->value;?>
" width="70%"></td>
			<td align="center" width="80%"><h1> PRODUCTO_PRECIOS</h1></td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
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
		<b>Fecha:</b> <?php echo $_smarty_tpl->tpl_vars['fecha']->value;?>

	</center>
  </body>
</html><?php }
}
