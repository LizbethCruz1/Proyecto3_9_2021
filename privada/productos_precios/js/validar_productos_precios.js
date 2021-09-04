"use strict"
function validar(){
	var precio = document.formu.precio.value;
	var cant_porsiones = document.formu.cant_porsiones.value;
	
	if ((!v22.test(precio)) || (precio == "")) {
		alert("El precio es incorrecto o el campo esta vacio");
		document.formu.precio.focus();
		return;
	}
	if ((!v22.test(cant_porsiones)) || (cant_porsiones == "")) {
		alert("La cantidad es incorrecta o el campo esta vacio");
		document.formu.cant_porsiones.focus();
		return;
	}
	document.formu.submit();	
}