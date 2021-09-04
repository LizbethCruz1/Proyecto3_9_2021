<?php 
session_start(); 

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT *
					FROM  proveedores p
					WHERE estado <>'0'
					ORDER BY id_proveedor DESC
					");
$rs = $db->GetAll($sql);

$sql1 = $db->Prepare("SELECT *
						FROM tienda_repostera
						WHERE id_tienda_repostera = 1
						AND estado <> '0'
					");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["logo_tienda"];

$fecha= date("Y-m-d H:i:s");

$smarty->assign("rpt_proveedores", $rs);
$smarty->assign("logo_tienda", $nombre);
$smarty->assign("fecha", $fecha);

$smarty->assign("direc_css", $direc_css);
$smarty->display("rpt_proveedores1.tpl");
?>