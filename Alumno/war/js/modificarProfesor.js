$(document).ready(function() {
	$('#modificar').click(function() {
		var DNI = $('#DNI').val();
		var Nombre = $('#Nombre').val();
		var toString = "DNI = " + DNI + "\n" + "con el Nombre = " + Nombre;
		var result = window.confirm('¿Seguro que desea el cambio de nombre del ?\n' + toString);
        if (result == false) {
            return;
        };
    	$.get('modificarProfesor',{"DNI": DNI, "Nombre": Nombre},
                function() { // on success
                    alert("Se Modifico .. Bien!");
                    window.location.href = "/index.jsp";
                })
                .fail(function() { //on failure
                	alert("Ups Error");
                });
	}); 
});