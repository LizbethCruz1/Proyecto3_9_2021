<?php
/* Smarty version 3.1.36, created on 2021-08-13 07:15:25
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\reportes\templates\rpt_proveedores1.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_61161c0d071743_15586874',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '04f8d5497ad6a708673d03b8f0089f893933b4f5' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\reportes\\templates\\rpt_proveedores1.tpl',
      1 => 1623915012,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61161c0d071743_15586874 (Smarty_Internal_Template $_smarty_tpl) {
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
			<td><img src="../img/<?php echo $_smarty_tpl->tpl_vars['logo_tienda']->value;?>
" width="70%"></td>
			<td align="center" width="80%"><h1> PROVEEDORES </h1></td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>PROVEEDOR</th><th>TELEFONO</th>
			</tr>
			<?php $_smarty_tpl->_assignInScope('b', "1");?>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['rpt_proveedores']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			<tr>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</td>
				<td><i><?php echo $_smarty_tpl->tpl_vars['r']->value['telefono'];?>
</i></td>
				<?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
				<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> <?php echo $_smarty_tpl->tpl_vars['fecha']->value;?>

	</center>
  </body>
</html><?php }
}
