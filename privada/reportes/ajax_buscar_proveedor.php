<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = strip_tags(stripslashes($_POST["nombre"]));
$telefono = strip_tags(stripslashes($_POST["telefono"]));

//$db->debug=true;
if ($nombre or $telefono) {
	$sql3 = $db->Prepare("SELECT *
						  FROM proveedores
						  WHERE nombre LIKE ?
						  AND telefono LIKE ?
						  AND estado <> '0'
						");
		$rs3 = $db->GetAll($sql3, array($nombre."%", $telefono."%"));
	if ($rs3) {
		echo"<center>
			<table class='listado'>
			<tr>
				<th>NOMBRE</th><th>TELEFONO<th>SELECCIONE</th>
			</tr>";
		foreach ($rs3 as $k => $fila) {
				 $str = $fila["nombre"];
				 $str1 = $fila["telefono"];
			echo"<tr>
					<td align='center'>".resaltar($nombre, $str)."</td>
					<td>".resaltar($telefono, $str1)."</td>
					<td align='center'>
						<input type='radio' name='seleccione' value='".$fila['id_proveedor']."'onclick='mostrar(".$fila["id_proveedor"].")'>
					</td>

				</tr>";
		}
			echo"</table>
		</center>";
	} else {
		echo"<center><b> EL PROVEEDOR NO EXISTE!!</b></center><br>";
	}
}
?>