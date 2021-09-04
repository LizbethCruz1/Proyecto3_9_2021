<?php
/* Smarty version 3.1.36, created on 2021-08-31 22:18:47
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\clientes\templates\clientes_nuevo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_612eaac70c4ed7_38971208',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '51f83fd962a51eaafb0af3510c9303f189a48c5a' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\clientes\\templates\\clientes_nuevo.tpl',
      1 => 1620025311,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_612eaac70c4ed7_38971208 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css" >
	<?php echo '<script'; ?>
 type="text/javascript" src="../js/expresiones_regulares.js"> <?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="js/validar_clientes.js"> <?php echo '</script'; ?>
>
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="clientes_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR PERSONA</h2>
				<p>
					<input type="text" name="nombre" size="15" placeholder="Nombres" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="ap" size="15" placeholder="Apellido Paterno" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
					<input type="text" name="am" size="15" placeholder="Apellido Materno" onkeyup="this.value=this.value.toUpperCase()">(*)
				</p>
				<p>
				<input type="text" name="ci" size="15" placeholder="Carnet de Identidad">(*)
				</p>
				<p>
					<input type="text" name="direccion" size="15" placeholder="Direccion" onkeyup="this.value=this.value.toUpperCase()">
				</p>
				<p>
					<input type="text" name="telefono" size="15" placeholder="Telefono" >
				</p>
				<p>
					(*)<b>Genero</b><input type="radio" name="genero" value="F">Femenino<input type="radio" name="genero" value="M">Masculino
				</p>
				<p>
					<input type="hidden" name="accion" value="">
					<input type="button" value="Aceptar" onclick="validar();" class="boton2">
					<input type="button" value="Cancelar" onclick="javascript:location.href='clientes.php';" class=boton2>
				</p>
				<p><b>(*)Campos Oblogatorios</b></p>
		</form>
	</div>
  </body>
</html><?php }
}
