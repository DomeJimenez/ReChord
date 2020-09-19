<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.Usuario"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Lista de los usuarios</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="static/css/estilo.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="static/css/main.css">

</head>
<body>
	<%!public String obtieneAtributo(HttpServletRequest request, String nombre) {
		String valor = (String) request.getAttribute(nombre);
		if (valor == null) {
			valor = "";
		}

		return valor;
	}%>

	<div class="session-wrapper">
		<div class="container container-full-width" id="estiloBody">
			<div class="row col-md-12" align="center">
				<h3>Proyecto Final Libres</h3>
			</div>
			<div class="row col-md-12">&nbsp;</div>
			<div class="container container-full-width">
				<div class="row col-md-12" align="center">
					<form action="ActualizarUsuario" method="post">
						<table border="1">
							<tr>
								<th style="text-align:center;">ID</th>
								<th style="text-align:center;">Email</th>
								<th style="text-align:center;">Nombre</th>
								<th style="text-align:center;">Apellido</th>
								<th style="text-align:center;">Contraseña</th>
								<th style="text-align:center;">Fecha</th>
							</tr>
							<%
								Usuario usuario;
							usuario = (Usuario) request.getAttribute("usuario");
							%>
							<tr>
								<td><label ><%=usuario.getId()%></label></td>
								<td><label ><%=usuario.getEmail().trim()%></label></td>
								<td><input type="text" name="nombre"
									value="<%=usuario.getNombre().trim()%>"></td>
								<td><input type="text" name="apellido"
									value="<%=usuario.getApellido().trim()%>"></td>
								<td><input type="text" name="pass"
									value="<%=usuario.getContrasenia().trim()%>"></td>
								<td><input type="date" id="start" name="fecha"
									value="<%=usuario.getFecha().trim()%>" min="1980-01-01" max="2016-01-01"></td>
							</tr>
						</table>
						
						<input type="hidden" name="id" value="<%=usuario.getId()%>" readonly>
						<input type="hidden" name="correo" value="<%=usuario.getEmail().trim()%>" readonly>
						
						<div class="row col-md-12">&nbsp;</div>
					
						<div class="row col-md-12" align="center" >
							<button type="submit" class="btn btn-primary" id="botonBuscar">Actualizar</button>
							<div>&nbsp;</div>
							<a href="EliminarUsuario?id=<%=usuario.getId()%>">Eliminar su cuenta</a>
						</div>
						
					</form>
					<div class="row col-md-12">&nbsp; </div>
					<div class="row col-md-12">
					<p style="color: red"><%=obtieneAtributo(request, "valError")%></p>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</html>