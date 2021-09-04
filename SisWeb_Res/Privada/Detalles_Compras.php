<?php
$codigo = $_POST["codigo"];
$cantidad = $_POST["cantidad"];
$codigo_compra = $_POST["codigo_compra"];
$codigo_precio = $_POST["codigo_precio"];

	echo "<br>";
	echo "Los Detalles de la Compra son: ";
	echo "Codigo:".$codigo. "<br/>";
	echo "Cantidad:".$cantidad."<br/>";
	echo "Codigo Compra:".$codigo_compra."<br/>";
	echo "Codigo de Producto precio:" .$codigo_precio."<br/>";
?>