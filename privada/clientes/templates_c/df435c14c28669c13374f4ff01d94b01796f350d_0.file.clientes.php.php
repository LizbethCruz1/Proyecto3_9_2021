<?php
/* Smarty version 3.1.36, created on 2021-05-03 06:25:18
  from 'C:\wamp64\www\SisReposteria_Cruz2\privada\clientes\clientes.php' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_608f974e09ed68_93152568',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'df435c14c28669c13374f4ff01d94b01796f350d' => 
    array (
      0 => 'C:\\wamp64\\www\\SisReposteria_Cruz2\\privada\\clientes\\clientes.php',
      1 => 1620023112,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_608f974e09ed68_93152568 (Smarty_Internal_Template $_smarty_tpl) {
echo '<?php 
';?>
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"clientes");

paginacion("clientes.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					FROM clientes
					WHERE estado <> '0'
					AND id_cliente > 1
					ORDER BY id_cliente DESC 
					LIMIT ? OFFSET ?
					");

$smarty->assign("clientes", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("clientes.php");
<?php echo '?>';
}
}
