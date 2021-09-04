<?php
$nombre = $_POST["nombre"];
$apellido_paterno = $_POST["apellido_paterno"];
$apellido_materno = $_POST["apellido_materno"];
$ci = $_POST["ci"];
$telefono = $_POST["telefono"];

	echo "<br>";
	echo "Los Datos del Cliente son: ";
	echo "Nombre:".$nombre. "<br/>";
	echo "Apellido Paterno:".$apellido_paterno."<br/>";
	echo "Apellido Materno:".$apellido_materno."<br/>";
	echo "CI:" .$ci."<br/>";
	echo "Telefono:" .$telefono."<br>";

?>