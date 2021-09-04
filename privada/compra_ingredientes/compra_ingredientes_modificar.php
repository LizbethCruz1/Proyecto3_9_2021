<?php 
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_compra_ingredientes = $_REQUEST["id_compra_ingrediente"];
$__id_tienda_repostera = $_REQUEST["id_tienda_repostera"];

$smarty = new Smarty;

//$db-> debug = true;

$sql = $db->Prepare("SELECT *
					FROM compra_ingredientes
					WHERE id_compra_ingrediente = ?
					");
$rs = $db->Getall($sql, array($__id_compra_ingredientes));

$sql2 = $db->Prepare("SELECT *
					 FROM tienda_repostera  
					 WHERE id_tienda_repostera = ?
					 AND estado <> '0' 
					 ");
$rs2 = $db->Getall($sql2, array($__id_tienda_repostera));

$sql3 = $db->Prepare("SELECT *
					 FROM tienda_repostera  
					 WHERE id_tienda_repostera <> ?
					 AND estado <> '0' 
					 ");
$rs3 = $db->Getall($sql3, array($__id_tienda_repostera));

$smarty->assign("compra_ingredientes", $rs);
$smarty->assign("tienda_repostera", $rs2);
$smarty->assign("tienda_reposteras", $rs3);
$smarty->assign("direc_css", $direc_css);
$smarty->display("compra_ingredientes_modificar.tpl");
 ?>
