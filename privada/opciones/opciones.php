<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT *
					FROM  opciones op
					WHERE op.estado <>'0'
					ORDER BY op.id_opcion DESC
					");
$rs = $db->GetAll($sql);

$smarty->assign("opciones", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("opciones.tpl");
?>