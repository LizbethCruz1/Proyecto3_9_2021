"use strict"
function validar(){
	var id_cliente = document.formu.id_cliente.value;
	var mont_pedido = document.formu.mont_pedido.value;
	var entrega = document.formu.entrega.value;
	var fec_pedido = document.formu.fec_pedido.value;
	var fec_entrega = document.formu.fec_entrega.value;
	var mont_total = document.formu.mont_total.value;

	if (id_cliente == "") {
		alert("Por favor seleccione un cliente");
		document.formu.id_cliente.focus();
		return;
	}
	if ((!v22.test(mont_pedido)) || (mont_pedido == "")) {
		alert("El monto es incorrecto o el campo esta vacio");
		document.formu.mont_pedido.focus();
		return;
	}
	if ((!v1.test(entrega)) || (entrega == "")) {
		alert("El campo esta vacio");
		document.formu.entrega.focus();
		return;
	}
	if (fec_pedido == "") {
		alert("Por favor inserte dato");
		document.formu.fec_pedido.focus();
		return;
	}
	if (fec_entrega == "") {
		alert("Por favor inserte dato");
		document.formu.fec_entrega.focus();
		return;
	}
	if ((!v22.test(mont_total)) || (mont_total == "")) {
		alert("El campo esta vacio");
		document.formu.mont_total.focus();
		return;
	}
	document.formu.submit();
}