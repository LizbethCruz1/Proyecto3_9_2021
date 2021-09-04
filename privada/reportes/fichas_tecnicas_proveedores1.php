<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_proveedor = $_REQUEST["id_proveedor"];

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT*
					  FROM proveedores
					  WHERE id_proveedor = ?
					  AND estado <> '0'
					
					");
$rs = $db->GetAll($sql, array($id_proveedor));
$sql1 = $db->Prepare("SELECT*
						FROM tienda_repostera
						WHERE id_tienda_repostera = 1
						AND estado <> '0'	
					");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_tienda = $rs1[0]["logo_tienda"];
$smarty->assign("logo_tienda", $logo_tienda);

$smarty->assign("proveedor", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("fichas_tecnicas_proveedores1.tpl");
?>