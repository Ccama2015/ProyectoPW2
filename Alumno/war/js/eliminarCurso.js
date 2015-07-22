$(document).ready(function() {
	$('#eliminarCurso').click(function() {
		var codigo = $('#codigo').val();

		var toString = "Codigo = " + codigo;
		var result = window.confirm('¿Seguro que quiere Borrar?\n' + toString);
        if (result == false) {
            return;
        };
    	$.get('eliminarCurso',{"Codigo": codigo},
                function() { // on success
                    alert("Se Borro .. Bien!");
                    window.location.href = "/index.jsp";
                })
                .fail(function() { //on failure
                	alert("Ups Error");
                });
	}); 
});