"use strict"
function validar(){
	var codigo = document.formu.codigo.value;
	var nombre = document.formu.nombre.value;
	var precio = document.formu.precio.value;
	var descrip_producto = document.formu.descrip_producto.value;

	if ((!v2.test(codigo)) || (codigo == "")) {
		alert("El codigo es incorrecto o el campo esta vacio");
		document.formu.codigo.focus();
		return;
	}
	if ((!v1.test(nombre)) || (nombre == "")) {
		alert("El  nombre es incorrecto o el campo esta vacio");
		document.formu.nombre.focus();
		return;
	}
	if ((!v22.test(precio)) || (precio == "")) {
		alert("El precio es incorrecto o el campo esta vacio");
		document.formu.precio.focus();
		return;
	}
	if ((!v1.test(descrip_producto)) || (descrip_producto == "")) {
		alert("La descripcion es incorrecta o el campo esta vacio");
		document.formu.descrip_producto.focus();
		return;
	}
	document.formu.submit();	
}