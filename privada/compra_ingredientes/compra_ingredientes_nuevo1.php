<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_tienda_repostera = $_POST["id_tienda_repostera"];
$__fec_compra = $_POST["fec_compra"];
$__mont_compra = $_POST["mont_compra"];

//$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["id_tienda_repostera"] = $__id_tienda_repostera;
	$reg["fec_compra"] = $__fec_compra;
	$reg["mont_compra"] = $__mont_compra;
	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("compra_ingredientes", $reg, "INSERT");

	if ($rs1) {
		header("Location: compra_ingredientes.php");
		exit();
	}else{
		$smarty->assign("mensaje", "ERROR: Los datos no se insertaron!!!!!!!");
		$smarty->assign("dire_css",$dire_css);
		$smarty->display("compra_ingredientes_nuevo1.tpl");
	}
?>