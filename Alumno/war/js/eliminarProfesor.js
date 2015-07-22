$(document).ready(function() {
	$('#eliminar').click(function() {
		var DNI = $('#DNI').val();

		var toString = "DNI = " + DNI;
		var result = window.confirm('¿Seguro que quiere Borrar?\n' + toString);
        if (result == false) {
            return;
        };
    	$.get('eliminarProfesor',{"DNI": DNI},
                function() { // on success
                    alert("Se Borro .. Bien!");
                    window.location.href = "/index.jsp";
                })
                .fail(function() { //on failure
                	alert("Ups Error");
                });
	}); 
});
