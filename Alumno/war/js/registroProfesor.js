$(document).ready(function() {
	$('#registroProfesor').click(function() {
		var DNI = $('#DNI').val();
		var Nombre = $('#Nombre').val();
		var ApellidoPaterno = $('#ApellidoPaterno').val();
		var ApellidoMaterno = $('#ApellidoMaterno').val();
		var toString = "DNI = " + DNI + "\n" + "Nombre = " + Nombre + "\n" +
						"ApellidoPaterno = " + ApellidoPaterno + "\n" +
						"ApellidoMaterno = " + ApellidoMaterno + "\n" ;
		var result = window.confirm('Seguro que quiere Guardar?\n' + toString);
        if (result == false) {
            return;
        };
    	$.post('registroProfesores',{"DNI": DNI, "Nombre": Nombre, "ApellidoPaterno": ApellidoPaterno, "ApellidoMaterno": ApellidoMaterno},
                function() { // on success
                    alert("Se Guardo .. Bien!");
                    window.location.href = "/index.jsp";
                })
                .fail(function() { //on failure
                	alert("Ups Error");
                });
	}); 
});