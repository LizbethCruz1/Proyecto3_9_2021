<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_cliente = $_POST["id_cliente"];
$__mont_pedido = $_POST["mont_pedido"];
$__entrega = $_POST["entrega"];
$__fec_pedido = $_POST["fec_pedido"];
$__fec_entrega = $_POST["fec_entrega"];
$__mont_total= $_POST["mont_total"];

//$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["id_cliente"] = $__id_cliente;
	$reg["mont_pedido"] = $__mont_pedido;
	$reg["entrega"] = $__entrega;
	$reg["fec_pedido"] = $__fec_pedido;
	$reg["fec_entrega"] = $__fec_entrega;
	$reg["mont_total"] = $__mont_total;
	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("pedidos", $reg, "INSERT");

	if ($rs1) {
		header("Location: pedidos.php");
		exit();
	}else{
		$smarty->assign("mensaje", "ERROR: Los datos no se insertaron!!!!!!!");
		$smarty->assign("dire_css",$dire_css);
		$smarty->display("pedidos_nuevo1.tpl");
	}
?>