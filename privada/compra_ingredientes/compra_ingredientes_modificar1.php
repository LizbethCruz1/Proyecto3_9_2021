<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_tienda_repostera = $_REQUEST["id_tienda_repostera"];
$__id_compra_ingrediente = $_REQUEST["id_compra_ingrediente"];
$__fec_compra = $_POST["fec_compra"];
$__mont_compra = $_POST["mont_compra"];

//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg = array();
	$reg["id_tienda_repostera"] = $__id_tienda_repostera;
	$reg["fec_compra"] = $__fec_compra;
	$reg["mont_compra"] = $__mont_compra;
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("compra_ingredientes", $reg, "UPDATE", "id_compra_ingrediente='".$__id_compra_ingrediente."'");

if ($rs1) {
	header("Location: compra_ingredientes.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se modificaron!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_compra_ingrediente", $__id_compra_ingrediente);
	$smarty->display("compra_ingrediente_modificar1.tpl");
}
 ?>
 