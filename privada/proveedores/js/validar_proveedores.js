"use strict"
function validar(){
	var nombre = document.formu.nombre.value;
	var direccion = document.formu.direccion.value;
	var telefono = document.formu.telefono.value;
	
	if ((!v1.test(nombre)) || (nombre == "")) {
		alert("Los nombres son incorrectos o el campo esta vacio");
		document.formu.nombre.focus();
		return;
	}
	if ((!v1.test(direccion)) || (direccion == "")) {
		alert("La direccion es incorrecta o el campo esta vacio");
		document.formu.direccion.focus();
		return;
	}
	if ((!v2.test(telefono)) || (telefono == "")) {
		alert("El telefono es incorrecto o el campo esta vacio");
		document.formu.telefono.focus();
		return;
	}
	
	document.formu.submit();	
}