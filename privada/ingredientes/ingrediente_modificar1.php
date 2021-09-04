<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__nombre = $_POST["nombre"];
$__descrip_ingrediente = $_POST["descrip_ingrediente"];
$__precio = $_POST["precio"];

//$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["nombre"] = $__nombre;
	$reg["descrip_ingrediente"] = $__descrip_ingrediente;
	$reg["precio"] = $__precio;
	$reg["usuarios"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("ingredientes", $reg , "UPDATE", "id_ingrediente='".$__id_ingrediente."'");

	if ($rs1) {
		header("Location: ingredientes.php");
		exit();
	} else{
		$smarty->assign("mensaje","ERROR: los datos no se insertaron!!!!!");
		$smarty->assign("direc_css",$direc_css);
		$smarty->assign("id_ingrediente",$__id_ingrediente);
		$smarty->display("ingrediente_modificar1.tpl");
	}
 ?>