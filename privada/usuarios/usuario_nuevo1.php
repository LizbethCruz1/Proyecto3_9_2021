<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_persona = $_POST["id_persona"];
$__usuario = $_POST["usuario"];
$__clave = $_POST["clave"];

$hash=password_hash($__clave, PASSWORD_DEFAULT);

$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["id_persona"] = $__id_persona;
	$reg["usuario"] = $__usuario;
	$reg["clave"] = $hash;
	$reg["fecha_insersion"] = date("Y-m-d H:i:s");
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("usuario", $reg, "INSERT");

	if ($rs1) {
		header("Location: usuarios.php");
		exit();
	}else{
		$smarty->assign("mensaje", "ERROR: Los datos no se insertaron!!!!!!!");
		$smarty->assign("dire_css",$dire_css);
		$smarty->display("usuario_nuevo1.tpl");
	}
?>