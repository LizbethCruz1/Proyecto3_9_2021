"use strict"

function validar(){
 	var codigo=document.formu.codigo.value;
 	var cantidad=document.formu.cantidad.value; 
	var codigo_venta=document.formu.codigo_venta.value;
	var cod_proct_precio=document.formu.cod_proct_precio.value;
 
 	if (( !v2.test(codigo)) || (codigo == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo.focus();
 		return;
 	}
 	if (( !v2.test(cantidad)) || (cantidad == "")) {
 		alert("La cantidad ingresada es incorrecto o el campo esta vacio");
 		document.formu.cantidad.focus();
 		return;
 	}
 	if (( !v2.test(codigo_venta)) || (codigo_venta =="")) {
 		alert("El codigo ingresado es incorrecto o el campo esta vacio");
 		document.formu.codigo_venta.focus();
 		return;
 	}
 	if (( !v2.test(cod_proct_precio)) || (cod_proct_precio == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu.codigo_producto.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}