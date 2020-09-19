<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<link href="static/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="static/css/estilo.css" rel="stylesheet" type="text/css"/>

<%!public String obtieneAtributo(HttpServletRequest request, String nombre) {
		String valor = (String) request.getAttribute(nombre);
		if (valor == null) {
			valor = "";
		}

		return valor;
	}%>

<div class="session-wrapper">
	<div class="container container-full-width" id="estiloHead">
		<div>&nbsp;</div>

		<div class="row col-lg-12" align="center">
			<img src="static/img/LogoGuitarraN.png"
				style="max-width: 15%; width: auto; height: auto;" />
			<h1><b>ReChord</b></h1>
		</div>
		
		<div>&nbsp;</div>
		
		<div class="row col-md-3"></div>
		<div class="row col-md-6" align="center">
			<p>Te damos la bienvenida <%=obtieneAtributo(request, "valNombre")%> <%=obtieneAtributo(request, "valApellido")%></p>
		</div>
		<div class="row col-md-3" align="right"></div>
			<a href="EditarUsuario?id=<%=request.getAttribute("valId")%>">Editar
				Perfil</a>
		<div>&nbsp;</div>
	</div>
</div>