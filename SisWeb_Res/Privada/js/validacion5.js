"use strict"

function validar(){
 	var codigo=document.formu5.codigo.value;
 	var nombre=document.formu5.nombre.value; 
	var cantidad=document.formu5.cantidad.value;
 
 	if (( !v2.test(codigo)) || (codigo == "")) {
 		alert("El codigo es incorrecto o el campo esta vacio");
 		document.formu5.codigo.focus();
 		return;
 	}
 	if (( !v1.test(nombre)) || (nombre == "")) {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu5.nombre.focus();
 		return;
 	}
 	if (( !v22.test(cantidad)) || (cantidad == "")) {
 		alert("La cantidad ingresada es incorrecta o el campo esta vacio");
 		document.formu5.cantidad.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}