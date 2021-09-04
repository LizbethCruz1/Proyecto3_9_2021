"use strict"
function validar(){
	var nombre = document.formu.nombre.value;
	var ap = document.formu.ap.value;
	var am = document.formu.am.value;
	var ci = document.formu.ci.value;
	var f = document.formu.genero[0].checked;
	var m = document.formu.genero[1].checked;

	if ((!v1.test(nombre)) || (nombre == "")) {
		alert("Los nombres son incorrectos o el campo esta vacio");
		document.formu.nombre.focus();
		return;
	}
	if ((ap== "") && (am=="")) {
		alert("Por favor introduzca un Apellido");
		document.formu.ap.focus();
		return;
	}
	if (ci== "") {
		alert("Por favor ingrese el numero de ci");
		document.formu.ci.focus();
		return;
	}
	if ((f == "") && (m == "")) {
		alert("El campo de genero esta vacio");
		return;
	}
	document.formu.submit();	
}