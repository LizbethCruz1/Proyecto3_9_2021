<?php
/* Smarty version 3.1.36, created on 2021-08-12 00:26:41
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\reportes\templates\rpt_productos_por_precios.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_61146ac101c570_80299837',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3a3c0db3bd1d2b988dc5ddc03d1f292712598f90' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\reportes\\templates\\rpt_productos_por_precios.tpl',
      1 => 1628727971,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61146ac101c570_80299837 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
<head>
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
	<meta charset="UTF-8">
	
	<?php echo '<script'; ?>
 type="text/javascript">
		function validar(){
			precio = document.formu.precio.value;
			if (document.formu.precio.value == ""){
				alert("Por favor seleccione el precio");
				document.formu.precio.focus();
				return;;
			}
			ventanaCalendario = window.open("rpt_productos_por_precios1.php?precio=" + precio , "calendario", "width=600,height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=No,status=No,realizable=YES,location=NO")
		}
	<?php echo '</script'; ?>
>
	
</head>
<body>
	<div class="formu_ingreso_datos">
		<h2> RPT DE CLIENTES POR PRECIO</h2>
		<form method="post" name="formu">
			<p>
				<b>*Seleccione Precio</b>
				<select name="precio">
					<option value="">--Seleccione--</option>
					<option value="35">35</option>
					<option value="60">60</option>
					<option value="120">120</option>
					<option value="40">40</option>
					<option value="20">20</option>
				</select>
			</p>
			<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton">
			</p>
		</form>
	</div>
  </body>
</html><?php }
}
