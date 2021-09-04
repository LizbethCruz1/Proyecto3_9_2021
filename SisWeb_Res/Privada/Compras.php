<?php
$codigo = $_POST["codigo"];
$cantidad = $_POST["cantidad"];
$fecha_compra = $_POST["fecha_compra"];
$codigo_tienta = $_POST["codigo_tienta"];

	echo "<br>";
	echo "Los Datos de la Compra son: ";
	echo "Codigo:".$codigo. "<br/>";
	echo "Cantidad:".$cantidad."<br/>";
	echo "Fecha de Compra:".$fecha_compra."<br/>";
	echo "Codigo de Tienda:" .$codigo_tienta."<br/>";

?>