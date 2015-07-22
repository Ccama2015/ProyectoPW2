$(document).ready(function() {
	$('#registroCurso').click(function() {
		var nombre = $('#nombre').val();
		var codigo = $('#codigo').val();
		var creditos = $('#creditos').val();
	
		var toString = "Nombre = " + nombre + "\n" + "Codigo = " + codigo + "\n" +
						"Creditos = " + creditos + "\n" ;
		var result = window.confirm('¿Seguro que quiere Guardar?\n' + toString);
        if (result == false) {
            return;
        };
        $('#cuerpo').css("background-image", "url(/image.gif)");
    	$.post('registroCurso',{"Nombre": nombre, "Codigo": codigo, "Creditos": creditos},
                function() { // on success
                    alert("Se Guardo .. Bien!");
                    window.location.href = "/index.jsp";
                })
                .fail(function() { //on failure
                	alert("Ups Error");
                });
	}); 
});

