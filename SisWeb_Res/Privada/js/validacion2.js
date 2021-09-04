"use strict"

function validar(){
 	var nombre=document.formu2.nombre.value;
 	var ap=document.formu2.apellido_paterno.value;
 	var am=document.formu2.apellido_materno.value;
	var direccion=document.formu2.direccion.value; 
	var telefono=document.formu2.telefono.value;
 
 	if (( !v1.test(nombre)) || (nombre == "")) {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu2.nombre.focus();
 		return;
 	}
 	if (( !v1.test(ap)) || (ap == "")) {
 		alert("El apellido ingresado es incorrecto o el campo esta vacio");
 		document.formu2.apellido_paterno.focus();
 		return;
 	}
 	if (( !v1.test(am)) || (am == "")) {
 		alert("El apellido ingresado es incorrecto o el campo esta vacio");
 		document.formu2.apellido_materno.focus();
 		return;
 	}
 	if (direccion == "") {
 		alert("La direccion es incorrecta o el campo esta vacio");
 		document.formu2.direccion.focus();
 		return;
 	}
 	if (telefono == ""){
 		alert("El telefono es incorrecto o el campo esta vacio");
 		document.formu2.telefono.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}