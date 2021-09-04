"use strict"

function validar(){
 	var codigo=document.formu.codigo.value;
 	var ventas=document.formu.ventas.value; 
	var fecha_venta=document.formu.fecha_venta.value;
	var codigo_producto=document.formu.codigo_producto.value;
 
 	if (( !v2.test(codigo)) || (codigo == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo.focus();
 		return;
 	}
 	if (( !v22.test(ventas)) || (ventas == "")) {
 		alert("El monto ingresado es incorrecto o el campo esta vacio");
 		document.formu.ventas.focus();
 		return;
 	}
 	if (fecha_venta =="") {
 		alert("La fecha ingresada es incorrecta o el campo esta vacio");
 		document.formu.am.focus();
 		return;
 	}
 	if (( !v2.test(codigo_producto)) || (codigo_producto == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo_producto.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}