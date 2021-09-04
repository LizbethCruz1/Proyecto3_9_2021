<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$precio = $_REQUEST["precio"];

$smarty = new Smarty;
//$db->debug=true;
if ($precio == "T"){
	$sql = $db->Prepare("SELECT *
							FROM precio
							WHERE estado <> '0'
							");
		$rs = $db->GetAll($sql);
}else{
	$sql = $db->Prepare("SELECT *
							FROM productos
							WHERE precio = ?
							AND estado <> '0'
							
						");
	$rs = $db->GetAll($sql, array($precio));
}

$sql1 = $db->Prepare("SELECT *
						FROM tienda_repostera
						WHERE id_tienda_repostera = 1
						AND estado <> '0'
					");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_tienda = $rs1[0]["logo_tienda"];
$smarty->assign("logo_tienda", $logo_tienda);

$fecha= date("Y-m-d H:i:s");
$smarty->assign("productos_por_precios1", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display("rpt_productos_por_precios1.tpl");
?>