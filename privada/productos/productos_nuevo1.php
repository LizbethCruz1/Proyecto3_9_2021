<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__codigo = $_POST["codigo"];
$__nombre = $_POST["nombre"];
$__precio = $_POST["precio"];
$__descrip_producto = $_POST["descrip_producto"];
$__foto = $_POST["foto"];

//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["id_tienda_repostera"] = 1;
$reg["codigo"] = $__codigo;
$reg["nombre"] = $__nombre;
$reg["precio"] = $__precio;
$reg["descrip_producto"] = $__descrip_producto;
$reg["foto"] = $__foto;
$reg["fecha_insersion"] = date("Y-m-d H:i:s");
$reg["estado"] = '1';
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("productos", $reg, "INSERT");

if ($rs1) {
	header("Location: productos.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("productos_nuevo1.tpl");
}
?>
