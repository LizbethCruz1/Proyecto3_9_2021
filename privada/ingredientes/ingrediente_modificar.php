<?php 
session_start ();  
require_once ("../../smarty/libs/Smarty.class.php");  
require_once ("../../conexion.php");  
require_once ("../libreria_menu.php"); 

$__id_ingrediente = $_REQUEST["id_ingrediente"];  

$smarty = new Smarty;  

$sql = $db->Prepare("SELECT * 
					 FROM ingredientes 
					 WHERE id_ingrediente = ?
						");  
$rs = $db->GetAll($sql, array($__id_ingrediente));  
$smarty->assign("ingredientes",$rs); 

$smarty->assign("direc_css",$direc_css);  
$smarty->display("ingrediente_modificar.tpl");  
?>