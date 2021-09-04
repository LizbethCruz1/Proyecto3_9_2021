"use strict"

function validar(){
 	var codigo=document.formu.codigo.value;
 	var precio_compra=document.formu.precio_compra.value; 
	var fechaprecio_compra=document.formu.fechaprecio_compra.value;
	var precio_venta=document.formu.precio_venta.value;
	var fechaprecio_venta=document.formu.fechaprecio_venta.value;
	var codigo_producto=document.formu.codigo_producto.value;
 
 	if (( !v2.test(codigo)) || (codigo == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo.focus();
 		return;
 	}
 	if (( !v22.test(precio_compra)) || (precio_compra == "")) {
 		alert("El monto ingresado es incorrecto el campo esta vacio");
 		document.formu.precio_compra.focus();
 		return;
 	}
 	if (fechaprecio_compra =="") {
 		alert("La fecha ingresada es incorrecta o el campo esta vacio");
 		document.formu.fechaprecio_compra.focus();
 		return;
 	}
 	if (( !v22.test(precio_venta)) || (precio_venta == "")) {
 		alert("El monto ingresado es incorrecto el campo esta vacio");
 		document.formu.precio_venta.focus();
 		return;
 	}
 	if (fechaprecio_venta =="") {
 		alert("La fecha ingresada es incorrecta o el campo esta vacio");
 		document.formu.fechaprecio_venta.focus();
 		return;
 	}
 	if (( !v2.test(codigo_producto)) || (codigo_producto == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo_producto.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}