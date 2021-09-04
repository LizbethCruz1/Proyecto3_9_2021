<?php
/* Smarty version 3.1.36, created on 2021-08-11 08:28:51
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\reportes\templates\rpt_clientes_genero.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_61138a43ce1f29_65706202',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ea68ce441ae12c8fe4b26e96ea1cad4602d5ea11' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\reportes\\templates\\rpt_clientes_genero.tpl',
      1 => 1628670504,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61138a43ce1f29_65706202 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
<head>
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
	<meta charset="UTF-8">
	
	<?php echo '<script'; ?>
 type="text/javascript">
		function validar(){
			genero = document.formu.genero.value;
			if (document.formu.genero.value == ""){
				alert("Por favor seleccione el genero");
				document.formu.genero.focus();
				return;;
			}
			ventanaCalendario = window.open("rpt_clientes_genero1.php?genero=" + genero , "calendario", "width=600,height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=No,status=No,realizable=YES,location=NO")
		}
	<?php echo '</script'; ?>
>
	
</head>
<body>
	<div class="formu_ingreso_datos">
		<h2> RPT DE CLIENTES POR GENERO</h2>
		<form method="post" name="formu">
			<p>
				<b>*Seleccione genero</b>
				<select name="genero">
					<option value="">--Seleccione--</option>
					<option value="T">Todos</option>
					<option value="Femenino">Femenino</option>
					<option value="Masculino">Masculino</option>
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
