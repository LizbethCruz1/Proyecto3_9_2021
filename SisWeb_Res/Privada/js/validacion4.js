"use strict"

function validar(){
 	var nombre=document.formu4.nombre.value;
 	var apellido_paterno=document.formu4.apellido_paterno.value;
 	var apellido_materno=document.formu4.apellido_materno.value;
	var ci=document.formu4.ci.value; 
	var telefono=document.formu4.telefono.value;
 
 	if (( !v1.test(nombre)) || (nombre == "")) {
 		alert("El nombre ingresado es incorrecto o el campo esta vacio");
 		document.formu4.nombre.focus();
 		return;
 	}
 	if (( !v1.test(apellido_paterno)) || (apellido_paterno == "")) {
 		alert("El apellido ingresado es incorrecto o el campo esta vacio");
 		document.formu4.apellido_paterno.focus();
 		return;
 	}
 	if (( !v1.test(apellido_materno)) || (apellido_materno == "")) {
 		alert("El apellido ingresado es incorrecto o el campo esta vacio");
 		document.formu4.apellido_materno.focus();
 		return;
 	}
 	if (ci == "") {
 		alert("La cedula de identidad es incorrecta o el campo esta vacio");
 		document.formu4.direccion.focus();
 		return;
 	}
 	if (telefono == ""){
 		alert("El telefono es incorrecto o el campo esta vacio");
 		document.formu4.telefono.focus();
 		return;
 	}
 	alert("DATOS CORRECTOS");
}