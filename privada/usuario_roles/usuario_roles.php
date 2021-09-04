<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT *
					FROM  usuario_roles ur
					WHERE ur.estado <>'0'
					ORDER BY ur.id_usuario_rol DESC
					");
$rs = $db->GetAll($sql);

 /*$sql = $db->Prepare("SELECT u.*, ur.id_rol, r.rol 
				 	FROM  usuario_roles ur, roles r 
				 	WHERE u.usuarios = ? 
				 	AND u.id_usuario = ur.id_usuario
				 	AND ur.id_rol = r.id_rol 
				 	AND u.estado <> '0' 
				 	AND ur.estado <> '0' 
				 	AND r.estado <> '0' 
				 	"); 
$rs = $db->GetAll($sql, array($nick));*/

$smarty->assign("usuario_roles", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("usuario_roles.tpl");
?>