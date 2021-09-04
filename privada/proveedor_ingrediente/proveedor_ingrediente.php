<?php 
session_start(); 

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"proveedor_ingrediente");

paginacion("proveedor_ingrediente.php?", $smarty);

$sql = $db->Prepare("SELECT p.nombre, i.nombre,pr.precio_ingrediente
					FROM proveedores p, ingredientes i, proveedor_ingrediente pr 
					WHERE  p.id_proveedor = i.id_ingrediente
					AND i.id_ingrediente = pr.id_proveedor_ingrediente
					AND p.estado <> '0'
					AND i.estado <> '0'
					AND pr.estado <> '0'
					ORDER BY pr.id_proveedor_ingrediente DESC
					");

$smarty->assign("proveedor_ingrediente", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("proveedor_ingrediente.tpl");
?>