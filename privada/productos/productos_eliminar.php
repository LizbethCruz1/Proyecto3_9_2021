<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_producto = $_REQUEST["id_producto"];

$smarty = new Smarty;

//$db ->debug=true;

$sql = $db->Prepare("SELECT *
					 FROM productos
					 WHERE id_producto = ?
					 AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_producto));

if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_producto"] = $_SESSION["sesion_id_producto"];
	$rs1 = $db->AutoExecute("productos", $reg, "UPDATE", "id_producto='".$__id_producto."'");
	header("Location:productos.php");
	exit();

}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron!!!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("productos_eliminar.tpl");
}
 ?>
