"use strict"

function validar(){
 	var codigo=document.formu.codigo.value;
 	var cantidad=document.formu.cantidad.value; 
	var fecha_compra=document.formu.fecha_compra.value;
	var codigo_tienda=document.formu.codigo_tienda.value;
 
 	if (( !v2.test(codigo)) || (codigo == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo.focus();
 		return;
 	}
 	if (( !v22.test(cantidad)) || (cantidad == "")) {
 		alert("La cantidad ingresada es incorrecta o el campo esta vacio");
 		document.formu.cantidad.focus();
 		return;
 	}
 	if (fecha_compra =="") {
 		alert("La fecha ingresada es incorrecta o el campo esta vacio");
 		document.formu.fecha_compra.focus();
 		return;
 	}
 	if (( !v2.test(codigo_tienda)) || (codigo_tienda == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo_tienda.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}