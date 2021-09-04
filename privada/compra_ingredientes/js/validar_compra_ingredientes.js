"use strict"
function validar(){
	var id_tienda_repostera = document.formu.id_tienda_repostera.value;
	var fec_compra = document.formu.fec_compra.value;
	var mont_compra = document.formu.mont_compra.value;
	
	if (id_tienda_repostera == "") {
		alert("Por favor seleccione una tienda");
		document.formu.id_tienda_repostera.focus();
		return;
	}

	if (fec_compra == "") {
		alert("Por favor ingrese la fecha");
		document.formu.fec_compra.focus();
		return;
	}
	if (mont_compra == "") {
		alert("Por favor ingrese el monto");
		document.formu.mont_compra.focus();
		return;
	}
	document.formu.submit();
}