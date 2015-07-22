$(document).ready(function() {
	$('#modificarCurso').click(function() {
		var codigo = $('#codigo').val();
		var nombre = $('#nombre').val();
		var toString = "Codigo = " + codigo + "\n" + "con el Nombre = " + nombre;
		var result = window.confirm('¿Seguro que desea el cambio de nombre del ?\n' + toString);
        if (result == false) {
            return;
        };
    	$.get('modificarNombre',{"Codigo": codigo, "Nombre": nombre},
                function() { // on success
                    alert("Se Modifico .. Bien!");
                    window.location.href = "/index.jsp";
                })
                .fail(function() { //on failure
                	alert("Ups Error");
                });
	}); 
});