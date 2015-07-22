<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="unsa.edu.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ELIMINAR ALUMNOS</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/eliminarAlumno.js"></script>

</head>
<body>
<div id="x">
<form id="eliminarAlumno" action="eliminarAlumnos" method="post">
<label>Borrar</label>
<input type="text" name="cui" id="cui">
<input type="submit" value="BORRAR">
</form>
</div>
</body>
</html>