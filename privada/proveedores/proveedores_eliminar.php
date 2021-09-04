<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_proveedor = $_REQUEST["id_proveedor"];

$smarty = new Smarty;

//$db ->debug=true;

$sql = $db->Prepare("SELECT *
					 FROM proveedores
					 WHERE id_proveedor = ?
					 AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_proveedor));

if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_proveedor"] = $_SESSION["sesion_id_proveedor"];
	$rs1 = $db->AutoExecute("proveedores", $reg, "UPDATE", "id_proveedor='".$__id_proveedor."'");
	header("Location:proveedores.php");
	exit();

}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron!!!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("proveedores_eliminar.tpl");
}
 ?>