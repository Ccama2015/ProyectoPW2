<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="unsa.edu.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ELIMINAR ALUMNOS</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/modificarAlumno.js"></script>
</head>
<body>
	<div id="x">
		<form id="modificarAlumno" action="modificarNombre"  method="post">
		<label>INGRESE SU CUI:</label><input type="text" id="cui" name="cui"><br><br>
		<label>SELECCIONE</label>
		<select name="dato">

							<div class="etiqueta">
								<option value="nombre">Nombre</option>
							</div>
							<div class="etiqueta">
								<option value="ApellidoPaterno">Apellido Paterno</option>
							</div>
							<div class="etiqueta">
								<option value="ApellidoMaterno">Apellido Materno</option>
							</div>
							<div class="etiqueta">
								<option value="DNI">DNI</option>
							</div>
							<div class="etiqueta">
								<option value="Direccion">Direccion</option>
							</div>
							<div class="etiqueta">
								<option value="Ciudad">Ciudad</option>
							</div>
							<div class="etiqueta">
								<option value="Distrito">Distrito</option>
							</div>
							<div class="etiqueta">
								<option value="TelefonoA">Telefono de Alumno</option>
							</div>
							<div class="etiqueta">
								<option value="FechaN">Fecha de Nacimiento</option>
							</div>
							<div class="etiqueta">
								<option value="Sexo">Sexo</option>
							</div>
							<div class="etiqueta">
								<option value="NombreAp">Nombre y Apellidos del Apoderado</option>
							</div>
							<div class="etiqueta">
								<option value="DireccionAp">Direccion Apoderado</option>
							</div>
							<div class="etiqueta">
								<option value="TelefonoAp">Telefono Apoderado</option>
							</div>
							</select>
				<br><br>
				<label>DATO A REEMPLAZAR</label> <input type="text" id="nombre" name="nombre"><br><br>
				  <input
				type="submit" value="MODIFICAR">
		</form>
	</div>
</body>
</html>