<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT *
					FROM  pedidos pe, clientes cl
					WHERE pe.id_pedido = cl.id_cliente
					AND pe.estado <>'0'
					AND cl.estado <> '0'
					ORDER BY pe.id_pedido DESC
					");
$rs = $db->GetAll($sql);

$smarty->assign("pedidos", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("pedidos.tpl");
?>