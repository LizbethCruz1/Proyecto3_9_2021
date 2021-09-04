<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__codigo = $_POST["codigo"];
$__nombre = $_POST["nombre"];
$__direccion = $_POST["direccion"];
$__pag_web = $_POST["pag_web"];
$__telefono = $_POST["telefono"];

//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["id_tienda_repostera"] = 1;
$reg["codigo"] = $__codigo;
$reg["nombre"] = $__nombres;
$reg["direccion"] = $__direccion;
$reg["pag_web"] = $__pag_web;
$reg["telefono"] = $__telefono;
$reg["fecha_insersion"] = date("Y-m-d H:i:s");
$reg["estado"] = '1';
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("tienda_repostera", $reg, "INSERT");

if ($rs1) {
	header("Location: tienda_repostera.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("tienda_repostera_nuevo1.tpl");
}
?>
