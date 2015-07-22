$(document).ready(function(){

$("#eliminarAlumno").submit(function(event) {
	event.preventDefault();
		
		var $form = $( this ),
			cui = $form.find( "input[name='cui']" ).val(),
		    
		    url = $form.attr( "action" );
		$.ajax({
            type: "POST",
            url: url,
            data: {"cui": cui},
            success: function(data){
            	$("#x").html(data);
            }
        });
	});
});