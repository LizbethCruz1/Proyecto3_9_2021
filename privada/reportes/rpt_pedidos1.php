<?php 
session_start(); 

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

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

$sql1 = $db->Prepare("SELECT *
						FROM tienda_repostera
						WHERE id_tienda_repostera = 1
						AND estado <> '0'
					");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["logo_tienda"];

$fecha= date("Y-m-d H:i:s");

$smarty->assign("pedidos", $rs);
$smarty->assign("logo_tienda", $nombre);
$smarty->assign("fecha", $fecha);

$smarty->assign("direc_css", $direc_css);
$smarty->display("rtp_pedidos1.tpl");
?>