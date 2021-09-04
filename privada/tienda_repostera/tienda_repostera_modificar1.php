<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_tienda_repostera = $_REQUEST["id_tienda_repostera"];
$__codigo = $_POST["codigo"];
$__nombre = $_POST["nombre"];
$__direccion = $_POST["direccion"];
$__pag_web = $_POST["pag_web"];
$__telefono = $_POST["telefono"];

//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["codigo"] = $__codigo;
$reg["nombre"] = $__nombres;
$reg["direccion"] = $__direccion;
$reg["pag_web"] = $__pag_web;
$reg["telefono"] = $__telefono;
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("tienda_repostera", $reg, "UPDATE", "id_tienda_repostera='".$__id_tienda_repostera."'");

if ($rs1) {
	header("Location: tienda_repostera.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se modificaron!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_tienda_repostera", $__id_tienda_repostera);
	$smarty->display("tienda_repostera_modificar1.tpl");
}
 ?>
 