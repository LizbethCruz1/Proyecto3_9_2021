<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__nombre = $_POST["nombre"];
$__ap = $_POST["ap"];
$__am = $_POST["am"];
$__ci = $_POST["ci"];
$__direccion = $_POST["direccion"];
$__telefono = $_POST["telefono"];
$__genero = $_POST["genero"];

//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["id_tienda_repostera"] = 1;
$reg["nombres"] = $__nombres;
$reg["ap"] = $__ap;
$reg["am"] = $__am;
$reg["ci"] = $__ci;
$reg["direccion"] = $__direccion;
$reg["telefono"] = $__telefono;
$reg["genero"] = $__genero;
$reg["fecha_insersion"] = date("Y-m-d H:i:s");
$reg["estado"] = '1';
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("clientes", $reg, "INSERT");

if ($rs1) {
	header("Location: clientes.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("clientes_nuevo1.tpl");
}
?>
