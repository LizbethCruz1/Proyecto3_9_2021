<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					 FROM tienda_repostera t 
					 WHERE t.estado <> '0'
					 ORDER BY t.id_tienda_repostera DESC 
					 ");
$rs = $db->Getall($sql);

$smarty->assign("tienda_repostera", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("compra_ingredientes_nuevo.tpl");
?>
