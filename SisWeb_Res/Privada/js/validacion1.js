"use strict"

function validar(){
 	var codigo=document.formu.codigo.value;
 	var nombre=document.formu.nombre.value;
	var direccion=document.formu.direccion.value; 
 
 	if (( !v2.test(codigo)) || (codigo == "")) {
 		alert("El codigo ingresado es incorrecto o el campo esta vacio");
 		document.formu.codigo.focus();
 		return;
 	}
 	if (nombre == "") {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu.nombre.focus();
 		return;
 	}
 	if (direccion == "") {
 		alert("La direccion es incorrecta o el campo esta vacio");
 		document.formu.direccion.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}