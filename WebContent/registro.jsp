<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Registro</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="static/css/estilo.css" rel="stylesheet" type="text/css" />
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
				<h3>Registro de Usuario</h3>
			</div>
			<div class="container container-full-width">
				<div class="row col-md-3"></div>
				<div class="container well row col-md-6">
					<form action="RegistrarUsuario" method="post">
						<div class="form-group">
							<label for="correo">Correo electrónico:</label> <input type="text"
								class="form-control" name="correo"
								value="<%=obtieneAtributo(request, "valCorreo")%>">
						</div>
						
						<div class="form-group">
							<label for="nombre">Nombre:</label> <input type="text"
								class="form-control" name="nombre"
								value="<%=obtieneAtributo(request, "valNombre")%>">
						</div>
						
						<div class="form-group">
							<label for="apellido">Apellido:</label> <input type="text"
								class="form-control" name="apellido"
								value="<%=obtieneAtributo(request, "valApellido")%>">
						</div>

						<div class="form-group">
							<label for="pass">Contraseña:</label> <input type="password"
								class="form-control" name="pass"
								value="<%=obtieneAtributo(request, "valPass")%>">
						</div>
					
						<div class="form-group">
							<label for="start">Día de nacimiento:</label> <input type="date"
								class="form-control" id="start" name="fecha"
								value="<%=obtieneAtributo(request, "valFecha")%>" min="1980-01-01"
								max="2016-01-01">
						</div>
			
						<p style="color: red"><%=obtieneAtributo(request, "valError")%></p>
						
						<div>&nbsp;</div>		
						
						<div align="center">
							<button type="submit" class="btn btn-primary" id="botonLogin">Registrar</button>
						</div>
					</form>
				</div>
				<div class="row col-md-3"></div>
			</div>
		</div>
	</div>

</body>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</html>