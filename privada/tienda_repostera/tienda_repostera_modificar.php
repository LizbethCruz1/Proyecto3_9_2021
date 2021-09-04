<<?php 
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_tienda_repostera = $_REQUEST["id_tienda_repostera"];

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					FROM tienda_repostera
					WHERE id_tienda_repostera = ?
					");
$rs = $db->Getall($sql, array($__id_tienda_repostera));
$smarty->assign("tienda_repostera", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("tienda_repostera_modificar.tpl");
 ?>
