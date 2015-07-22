<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Matriculas</title>
<link rel="stylesheet" type="text/css" href="css/menu_admin.css">
<script type="text/javascript" src="js/jquery.js"></script>
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
        	<li > <a href="relacionAlumnos">ALUMNOS</a></li>
            <li > <a href="controladorVista?opcion=12">PROFESORES</a></li>
            <li > <a href="controladorVista?opcion=13">CURSOS</a></li>
        </ul> 
    </li>

</ul>
</td>
</tr>
<tr>
<td>
<div id="cuerpo" align="center" style="color: white">
   <a style=" font-family: Calibri; font-size: 40px;color: white ">BIENVENIDO A PANEL DE CONTROL</a><br>

   <a style="color: white; font-size: 18px; font-family: calibri;" href="DESCRIPCION-DE-LA-PAGINA-WEB.pdf">DESCRIPCION DE LA WEB</a><br>
   <a style="color: white; font-size: 18px; font-family: calibri;" href="PROYECTO-DE-MATRICULAS.pdf">INFORME</a><br>
   <a style="color: white; font-size: 18px; font-family: calibri;" href="SISTEMA-DE-MATRICULAS-2015.pdf">MAPA DE SITIO</a><br>
   <a style="color: white; font-size: 18px; font-family: calibri;" href="UML.gif">UML</a>
   
<h3>BIENVENIDO ADMINISTRADOR ${sessionScope.usuario}</h3>
  <form action="cerrar" method="post">
		<input type="submit" value="Salir" ><br>
  </form>
</div><br>

</td>
</tr>

   <tr>
    <td align="center" height="40px">
    <hr>
     <div style="color: gray ;">Derechos Reservados</div>
     <div style="color: gray ;">UNIVERSIDAD NACIONAL DE SAN AGUSTIN</div>
     <div style="color: gray ;">2015</div>
    </td>
   </tr>
   
</table>

</body>
</html>