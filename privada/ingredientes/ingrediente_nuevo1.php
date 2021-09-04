<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__nombre = $_POST["nombre"];
$__descrip_ingrediente = $_POST["descrip_ingrediente"];
$__precio = $_POST["precio"];


//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["id_ingrediente"] = 1;
$reg["nombre"] = $__nombre;
$reg["descrip_ingrediente"] = $__descrip_ingrediente;
$reg["precio"] = $__precio;
$reg["fec_insercion"] = date("Y-m-d H:i:s");
$reg["estado"] = '1';
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("ingredientes", $reg, "INSERT");

if ($rs1) {
	header("Location: ingredientes.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("ingrediente_nuevo1.tpl");
}
?>
