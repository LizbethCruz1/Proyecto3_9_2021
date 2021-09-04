<?php
/* Smarty version 3.1.36, created on 2021-08-06 10:53:21
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\templates\menu_sup.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_610d14a14bb9a7_47764645',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6c37a0e6eefef3ee8bcb05a77c5537b4da1cec9d' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\templates\\menu_sup.tpl',
      1 => 1622334383,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610d14a14bb9a7_47764645 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html> 
<html> 
<head> 
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css"> 
</head> 
<body>
	 <div class="cabecera"> 
	 	<img src="../img/<?php echo $_smarty_tpl->tpl_vars['logo_tienda']->value;?>
" width="10%" > 
	 	<div class="titulo" > 
	 		REPOSTERIA "<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" 
	 	</div> 
	 	 <div class="usuario"> 
	 		Usuario:<b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['usuario'];?>
</b> 
	 		Rol: <b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['rol'];?>
</b> 
	 	</div> 
	 </div>
	</body> 
</html><?php }
}
