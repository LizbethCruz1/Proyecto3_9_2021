<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_ingrediente = $_REQUEST["id_ingrediente"];

$smarty = new Smarty;

//$db ->debug=true;

$sql = $db->Prepare("SELECT *
					 FROM ingredientes
					 WHERE id_ingrediente = ?
					 AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_ingrediente));

if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_ingrediente"] = $_SESSION["sesion_id_ingrediente"];
	$rs1 = $db->AutoExecute("ingredientes", $reg, "UPDATE", "id_ingrediente='".$__id_ingrediente."'");
	header("Location:ingredientes.php");
	exit();

}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron!!!!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("ingrediente_eliminar.tpl");
}
 ?>