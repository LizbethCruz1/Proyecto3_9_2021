<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

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

$smarty->assign("productos_precios", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("productos_precios.tpl");
?>