<?php 
session_start(); 

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT *
					FROM  productos_precios pr , productos r 
					WHERE pr.id_productos_precios = r.id_productos_precios
					AND pr.estado <>'0'
					AND r.estado <>'0'
					ORDER BY (r.id_productos_precios) DESC
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

$smarty->assign("productos_precios", $rs);
$smarty->assign("logo_tienda", $nombre);
$smarty->assign("fecha", $fecha);

$smarty->assign("direc_css", $direc_css);
$smarty->display("productos_precios1.tpl");
?>