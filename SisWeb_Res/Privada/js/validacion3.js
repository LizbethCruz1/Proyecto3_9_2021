"use strict"

function validar(){
 	var nombre=document.formu3.nombre.value;
 	var apellido=document.formu3.apellido.value;
	var direccion=document.formu3.direccion.value; 
	var telefono=document.formu3.telefono.value;
 
 	if (( !v1.test(nombre)) || (nombre == "")) {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu3.nombre.focus();
 		return;
 	}
 	if (( !v1.test(apellido)) || (apellido == "")) {
 		alert("El apellido ingresado es incorrecto o el campo esta vacio");
 		document.formu3.apellido.focus();
 		return;
 	}
 	if (direccion == "") {
 		alert("La direccion es incorrecta o el campo esta vacio");
 		document.formu3.direccion.focus();
 		return;
 	}
 	if (telefono == ""){
 		alert("El telefono es incorrecto o el campo esta vacio");
 		document.formu3.telefono.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}