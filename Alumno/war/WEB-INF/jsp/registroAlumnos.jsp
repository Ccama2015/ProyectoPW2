<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="unsa.edu.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registro de Alumnos</title>
<link rel="stylesheet" type="text/css" href="css/menu_admin.css">
<link rel="stylesheet" type="text/css" href="css/Estilos.css">
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/registroAlumno.js"></script>
</head>
<body>

<table align="center" height="1000px" bgcolor="#191970" >
<tr>
<td height="20px">
	<div align="center" style="color: white ; font-family: Calibri Light; font-size: 40px">S I S T E M A  -  DE  -  M A T R I C U L A S</div>
</td>
</tr>
<tr>
<td height="50px">
	<img src="img/cabeza.jpg" width=auto height=auto>
</td>
</tr>
<tr>
<td height="10px" align="center">
		<ul class="menu">
	<li > <a href="controladorVista?opcion=1">INICIO</a> </li>
    <li> <a>REGISTRAR</a>
        <ul>
        	<li > <a href="controladorVista?opcion=2">ALUMNOS</a></li>
            <li ><a href="controladorVista?opcion=3">PROFESORES</a></li>
            <li ><a href="controladorVista?opcion=4">CURSOS</a></li>
        </ul> 
    </li>
        <li> <a>ELIMINAR</a>
        <ul>
        	<li > <a href="controladorVista?opcion=5">ALUMNOS</a></li>
            <li > <a href="controladorVista?opcion=6">PROFESORES</a></li>
            <li > <a href="controladorVista?opcion=7">CURSOS</a></li>
        </ul> 
    </li>
        <li> <a>MODIFICAR</a>
        <ul>
        	<li > <a href="controladorVista?opcion=8">ALUMNOS</a></li>
            <li > <a href="controladorVista?opcion=9">PROFESORES</a></li>
            <li > <a href="controladorVista?opcion=10">CURSOS</a></li>
        </ul> 
    </li>
            <li> <a>MOSTRAR</a>
        <ul>
        	<li > <a href="ControladorVista?opcion=11">ALUMNOS</a></li>
            <li > <a href="ControladorVista?opcion=12">PROFESORES</a></li>
            <li > <a href="ControladorVista?opcion=13">CURSOS</a></li>
        </ul> 
    </li>

</ul>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<table align="center">
	<tr>
		<td>
		<div id="x">
<form id="registrarAlumno" action="registroAlumnos" method="post" >
			<div id="formulario">
			<legend>DATOS DEL ALUMNO</legend>
				<div class="fila">
					<div class="etiqueta">
						<label for="CUI">CUI: </label>
					</div>
					<div class="control">
						<input type="number" id="cui" name="cui" maxlength="8" minlength="8" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta">
						<label for="Nombre">NOMBRE:</label>
					</div>
					<div class="control">
						<input type="text" id="nombre" name="nombre"  maxlength="20" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta">
						<label for="ApellidoPaterno">APELLIDO PATERNO</label>
					</div>
					<div class="control">
						<input type="text" id="apellidoPaterno" name="apellidoPaterno" maxlength="20" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta">
						<label for="ApellidoMaterno">APELLIDO MATERNO</label>
					</div>
					<div class="control">
						<input type="text" id="apellidoMaterno" name="apellidoMaterno" maxlength="20" required/>
					</div>
				</div>
				
					<div class="fila">
					<div class="etiqueta">
						<label for="dni">DNI:</label>
					</div>
					<div class="control">
						<input type="text" id="dni" name="dni" maxlength="8" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta">
						<label for="Direccion">DIRECCION:</label>
					</div>
					<div class="control">
						<input type="text" id="direccion" name="direccion" maxlength="50" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta">
						<label for="Departamento">CIUDAD:</label>
					</div>
					<div class="control">
						<input type="text" id="ciudad" name="ciudad" maxlength="20" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta">
						<label for="Provincia">DISTRITO:</label>
					</div>
					<div class="control">
						<input type="text" id="distrito" name="distrito" maxlength="20" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta">
						<label for="numTelefono">TELEFONO DE ALUMNO :</label>
					</div>
					<div class="control">
						<input type="text" id="numTelefono" name="numTelefono" maxlength="30" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta">
						<label for="FechaNacimiento">FECHA DE NACIMIENTO: </label>
					</div>
					<div class="control">
						<input type="date" id="nacimiento" name="nacimiento" maxlength="10" required/>
					</div>
				</div>

				<div class="fila">
					<div class="etiqueta">
						<label for="Sexo">SEXO: </label>
					</div>
					<div class="control">
						<input type="radio" id="sexo" name="sexo" value="masculino"> Masculino
						<br> <input type="radio" id="sexo" name="sexo" value="femenino">
						Femenino
					</div>
				</div>

                <p><legend>DATOS DE APODERADO</legend></p>

                <div class="fila">
					<div class="etiqueta">
						<label for="nombreAp">Apellidos y nombres del apoderado:</label>
					</div>
					<div class="control">
						<input type="text" id="nombreAp" name="nombreAp" maxlength="40" required/>
					</div>
				</div>

                <div class="fila">
					<div class="etiqueta">
						<label for="direccionAp">Direccion del apoderado: </label>
					</div>
					<div class="control">
						<input type="number" id="direccionAp" name="nombreAp" maxlength="30" required/>
					</div>
				</div>

				<div class="fila">
					<div class="etiqueta">
						<label for="Telefono">Telefono del apoderado: </label>
					</div>
					<div class="control">
						<input type="number" id="telefonoAp" name="telefonoAp" maxlength="15" required/>
					</div>
				</div>

				
				<div class="fila">
					<div id="action">
						<input type="submit" value="REGISTRAR">
			    
					</div>
				</div>
				
			</div>		
			</form>
			</div>
		</td>
	</tr>
</table>
	
</td>
</tr>	

</body>

</html>