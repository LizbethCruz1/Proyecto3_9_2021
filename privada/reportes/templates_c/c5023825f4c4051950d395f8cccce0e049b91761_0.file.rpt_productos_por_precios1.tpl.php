<?php
/* Smarty version 3.1.36, created on 2021-08-12 00:21:58
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\reportes\templates\rpt_productos_por_precios1.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_611469a6b77260_33898613',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c5023825f4c4051950d395f8cccce0e049b91761' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\reportes\\templates\\rpt_productos_por_precios1.tpl',
      1 => 1628727696,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_611469a6b77260_33898613 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<?php echo '<script'; ?>
 type="text/javascript">
		var ventanaCalendario=false
			function imprimir() {
				if (confirm(' Desea Imprimir ?')) {
					window.print();
				}
			}
	<?php echo '</script'; ?>
>
</head>
<body style='cursor: pointer;cursor: hand' onclick='imprimir();'>
	<table width="100%" border="0">
		<tr>
			<td>
				<img src="../../img/<?php echo $_smarty_tpl->tpl_vars['logo_tienda']->value;?>
" width="70%">
			</td>
			<td align="center" width="80%">
				<h1> PRODUCTOS -- PRECIO </h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>CODIGO</th><th>NOMBRE</th><th>PRECIO</th><th>DESCRIPCION</th>
			</tr>
			<?php $_smarty_tpl->_assignInScope('b', "1");?>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['productos_por_precios1']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			<tr>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['codigo'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['precio'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['descrip_producto'];?>
</td>
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
