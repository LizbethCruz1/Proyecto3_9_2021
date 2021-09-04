<?php
/* Smarty version 3.1.36, created on 2021-08-06 10:53:32
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\claves\templates\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_610d14ac8de5c4_58709948',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b0dc57d7d1486348be4cad6e7a250e6f6ab765bb' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\claves\\templates\\index.tpl',
      1 => 1617949330,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610d14ac8de5c4_58709948 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
 <head> 
 	<link rel="stylesheet" type="text/css" href="../../css/colores.css"> 
 	 
 		<?php echo '<script'; ?>
 type="text/javascript"> 
 		function refrescar() { 
 			var p = window.parent; 
 		p.location.href='../'; 
 		}

 	<?php echo '</script'; ?>
> 
 	
</head> 
<body ONLOAD="self.setTimeout('refrescar()',1000);"> 
	<center> 
		<h1><?php echo $_smarty_tpl->tpl_vars['mensage']->value;?>
</h1> 
		<br> 
		<h1><?php echo $_smarty_tpl->tpl_vars['mensage1']->value;?>
</h1> 
	</center> 
</body> 
</html><?php }
}
