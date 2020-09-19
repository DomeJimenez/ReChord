<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Login</title>
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
				<h3>Ingreso de Usuario</h3>
			</div>
			<div class="container container-full-width">
				<div class="row col-md-3"></div>
				<div class="container well row col-md-6">
					<form action="VerificarLogin" method="post">

						<div class="form-group">
							<label for="email">Email:</label> <input type="text"
								class="form-control" name="email"
								value="<%=obtieneAtributo(request, "valEmail")%>">
						</div>

						<div class="form-group">
							<label for="password">Contraseña:</label> <input type="password"
								class="form-control" name="password">
						</div>

						<p style="color: red"><%=obtieneAtributo(request, "valError")%></p>

						<div align="center">

							<button type="submit" class="btn btn-primary" id="botonLogin">Ingresar</button>
							<div>&nbsp;</div>
							<a href="registro.jsp">Registrarte gratis</a>

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