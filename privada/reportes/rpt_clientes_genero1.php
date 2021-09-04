<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$genero = $_REQUEST["genero"];

$smarty = new Smarty;
//$db->debug=true;
if ($genero == "T"){
	$sql = $db->Prepare("SELECT id_cliente,ap,am,nombre,ucase(genero) as genero
							FROM clientes
							WHERE estado <> '0'
							");
		$rs = $db->GetAll($sql);
}else{
	$sql = $db->Prepare("SELECT id_cliente,ap,am,nombre,ucase(genero) as genero
							FROM clientes
							WHERE genero = ?
							AND estado <> '0'
							
						");
	$rs = $db->GetAll($sql, array($genero));
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
$smarty->assign("clientes_genero1", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display("rpt_clientes_genero1.tpl");
?>