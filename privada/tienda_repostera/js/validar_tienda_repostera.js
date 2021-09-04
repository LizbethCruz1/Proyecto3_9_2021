"use strict"
function validar(){
	var codigo = document.formu.codigo.value;
	var nombre = document.formu.nombre.value;
	var direccion = document.formu.direccion.value;
	var pag_web = document.formu.pag_web.value;

	if (ci== "") {
		alert("Por favor ingrese el numero de codigo");
		document.formu.codigo.focus();
		return;
	}
	if ((!v1.test(nombre)) || (nombre == "")) {
		alert("El nombre es incorrecto o el campo esta vacio");
		document.formu.nombre.focus();
		return;
	}
	if ((!v1.test(direccion)) || (direccion=="")) {
		alert("Por favor introduzca una direccion");
		document.formu.direccion.focus();
		return;
	}
	if ((!v3.test(pag_web)) || (pag_web == "")) {
		alert("El campo esta vacio");
		document.formu.pag_web.focus();
		return;
	}
	document.formu.submit();	
}