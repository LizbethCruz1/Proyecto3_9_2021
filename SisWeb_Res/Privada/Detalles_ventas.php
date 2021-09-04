<?php
$codigo = $_POST["codigo"];
$cantidad = $_POST["cantidad"];
$codigo_venta = $_POST["codigo_venta"];
$cod_proct_precio = $_POST["cod_proct_precio"];

	echo "<br>";
	echo "Los Detalles de la Venta son: ";
	echo "Codigo:".$codigo. "<br/>";
	echo "Cantidad:".$cantidad."<br/>";
	echo "Codigo de Venta:".$codigo_venta."<br/>";
	echo "Codigo de Producto precio:" .$cod_proct_precio."<br/>";
?>