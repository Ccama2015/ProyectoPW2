<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="unsa.edu.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE HTML>
<html lang="es">
<head>
<title>ProgramaciÃ³n Web con Google App Engine</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body>

<div id="contenido">
		
		<table border='1' width='100%' class='listar_registros'>
							<tr><th>Nombres</th>
							<th>Apellido Paterno</th>
							<th>Apellido Materno</th>
							<th>DNI</th>
							<th>Direccion</th>
							<th>Ciudad</th>
							<th>Distrito</th>
							<th>Nacimiento</th>
							<th>Sexo</th>
							<th>Telefono</th> 
							<th>CUI</th></tr>
		<% List<Alumnos> alumnos = (List<Alumnos>) request.getAttribute("alumnos");%>
		<%for( Alumnos a : alumnos ) {%>
				<tr>
						<td><%=a.getNombre()%></td>
						<td><%=a.getApellidoPaterno() %></td>
						<td><%=a.getApellidoMaterno() %></td>
						<td><%=a.getDni() %></td>
						<td><%=a.getDireccion() %></td>
						<td><%=a.getCiudad() %> </td>
						<td><%=a.getDistrito() %> </td>
						<td><%=a.getNacimiento() %> </td>
						<td><%=a.getSexo() %></td>
						<td><%=a.getNumTelefono() %></td>
						<td><%=a.getCui() %></td>
					</tr>
					
				
			<%}%>
			</table>
		</div>	
	</div>
</body>
</html>