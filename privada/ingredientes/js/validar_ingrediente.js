"use strict"
function validar(){
	var nombre = document.formu.nombre.value;
	var descrip_ingrediente = document.formu.descrip_ingrediente.value;
	var precio = document.formu.precio.value;
	

	if ((!v1.test(nombre)) || (nombre == "")) {
		alert("El campo esta vacio");
		document.formu.nombre.focus();
		return;
	}
	if ((!v1.test(descrip_ingrediente)) || (descrip_ingrediente == "")) {
		alert("El campo esta vacio");
		document.formu.descrip_ingrediente.focus();
		return;
	}
	if (precio== "") {
		alert("Por favor ingrese el precio");
		document.formu.precio.focus();
		return;
	}
	document.formu.submit();	
}