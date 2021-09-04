"use strict"

function validar(){
 	var codigo=document.formu.codigo.value;
 	var cantidad=document.formu.cantidad.value; 
	var codigo_compra=document.formu.codigo_compra.value;
	var codigo_precio=document.formu.codigo_precio.value;
 
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
 	if (( !v2.test(codigo_compra)) || (codigo_compra == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo_compra.focus();
 		return;
 	}
 	if (( !v2.test(codigo_precio)) || (codigo_precio == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo_precio.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}
