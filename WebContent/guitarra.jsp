<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="headerUsuario.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>ReChord</title>
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
			<form action="Guitarra" method="post">

				<div>
					<div class="row col-md-12" align="center">
						<h3>Guitarra</h3>
					</div>
					
					<div class="row col-md-12" align="center">&nbsp;</div>
					
					<div class="row col-md-12" align="center">
						<table>
							<tr>
								<th></th>
								<th style="text-align:center;">Al Aire</th>
								<th></th>
								<th></th>
								<th style="text-align:center;">III</th>
								<th></th>
								<th style="text-align:center;">V</th>
								<th></th>
								<th style="text-align:center;">VII</th>
								<th></th>
								<th style="text-align:center;">IX</th>
								<th></th>
								<th></th>
								<th style="text-align:center;">XII</th>
							</tr>
							<tr>
								<th style="text-align:center;">1ra cuerda</th>
								<td><input type=checkbox name="00" value="E" readonly>E</td>
								<td><input type=checkbox name="01" value="F" readonly>F</td>
								<td><input type=checkbox name="02" value="F#" readonly>F#</td>
								<td><input type=checkbox name="03" value="G" readonly>G</td>
								<td><input type=checkbox name="04" value="G#" readonly>G#</td>
								<td><input type=checkbox name="05" value="A" readonly>A</td>
								<td><input type=checkbox name="06" value="A#" readonly>A#</td>
								<td><input type=checkbox name="07" value="B" readonly>B</td>
								<td><input type=checkbox name="08" value="C" readonly>C</td>
								<td><input type=checkbox name="09" value="C#" readonly>C#</td>
								<td><input type=checkbox name="010" value="D" readonly>D</td>
								<td><input type=checkbox name="011" value="D#" readonly>D#</td>
								<td><input type=checkbox name="012" value="E" readonly>E</td>
							</tr>
							<tr>
								<th style="text-align:center;">2da cuerda</th>
								<td><input type=checkbox name="10" value="B" readonly>B</td>
								<td><input type=checkbox name="11" value="C" readonly>C</td>
								<td><input type=checkbox name="12" value="C#" readonly>C#</td>
								<td><input type=checkbox name="13" value="D" readonly>D</td>
								<td><input type=checkbox name="14" value="D#" readonly>D#</td>
								<td><input type=checkbox name="15" value="E" readonly>E</td>
								<td><input type=checkbox name="16" value="F" readonly>F</td>
								<td><input type=checkbox name="17" value="F#" readonly>F#</td>
								<td><input type=checkbox name="18" value="G" readonly>G</td>
								<td><input type=checkbox name="19" value="G#" readonly>G#</td>
								<td><input type=checkbox name="110" value="A" readonly>A</td>
								<td><input type=checkbox name="111" value="A#" readonly>A#</td>
								<td><input type=checkbox name="112" value="B" readonly>B</td>
							</tr>
							<tr>
								<th style="text-align:center;">3ra cuerda</th>
								<td><input type=checkbox name="20" value="G" readonly>G</td>
								<td><input type=checkbox name="21" value="G#" readonly>G#</td>
								<td><input type=checkbox name="22" value="A" readonly>A</td>
								<td><input type=checkbox name="23" value="A#" readonly>A#</td>
								<td><input type=checkbox name="24" value="B" readonly>B</td>
								<td><input type=checkbox name="25" value="C" readonly>C</td>
								<td><input type=checkbox name="26" value="C#" readonly>C#</td>
								<td><input type=checkbox name="27" value="D" readonly>D</td>
								<td><input type=checkbox name="28" value="D#" readonly>D#</td>
								<td><input type=checkbox name="29" value="E" readonly>E</td>
								<td><input type=checkbox name="211" value="F" readonly>F</td>
								<td><input type=checkbox name="212" value="F#" readonly>F#</td>
								<td><input type=checkbox name="20" value="G" readonly>G</td>
							</tr>
							<tr>
								<th style="text-align:center;">4ta cuerda</th>
								<td><input type=checkbox name="30" value="D" readonly>D</td>
								<td><input type=checkbox name="31" value="D#" readonly>D#</td>
								<td><input type=checkbox name="32" value="E" readonly>E</td>
								<td><input type=checkbox name="33" value="F" readonly>F</td>
								<td><input type=checkbox name="34" value="F#" readonly>F#</td>
								<td><input type=checkbox name="35" value="G" readonly>G</td>
								<td><input type=checkbox name="36" value="G#" readonly>G#</td>
								<td><input type=checkbox name="37" value="A" readonly>A</td>
								<td><input type=checkbox name="38" value="A#" readonly>A#</td>
								<td><input type=checkbox name="39" value="B" readonly>B</td>
								<td><input type=checkbox name="310" value="C" readonly>C</td>
								<td><input type=checkbox name="311" value="C#" readonly>C#</td>
								<td><input type=checkbox name="312" value="D" readonly>D</td>
							</tr>
							<tr>
								<th style="text-align:center;">5da cuerda</th>
								<td><input type=checkbox name="40" value="A" readonly>A</td>
								<td><input type=checkbox name="41" value="A#" readonly>A#</td>
								<td><input type=checkbox name="42" value="B" readonly>B</td>
								<td><input type=checkbox name="43" value="C" readonly>C</td>
								<td><input type=checkbox name="44" value="C#" readonly>C#</td>
								<td><input type=checkbox name="45" value="D" readonly>D</td>
								<td><input type=checkbox name="46" value="D#" readonly>D#</td>
								<td><input type=checkbox name="47" value="E" readonly>E</td>
								<td><input type=checkbox name="48" value="F" readonly>F</td>
								<td><input type=checkbox name="49" value="F#" readonly>F#</td>
								<td><input type=checkbox name="410" value="G" readonly>G</td>
								<td><input type=checkbox name="411" value="G#" readonly>G#</td>
								<td><input type=checkbox name="412" value="A" readonly>A</td>
							</tr>
							<tr>
								<th style="text-align:center;">6ta cuerda</th>
								<td><input type=checkbox name="50" value="E" readonly>E</td>
								<td><input type=checkbox name="51" value="F" readonly>F</td>
								<td><input type=checkbox name="52" value="F#" readonly>F#</td>
								<td><input type=checkbox name="53" value="G" readonly>G</td>
								<td><input type=checkbox name="54" value="G#" readonly>G#</td>
								<td><input type=checkbox name="55" value="A" readonly>A</td>
								<td><input type=checkbox name="56" value="A#" readonly>A#</td>
								<td><input type=checkbox name="57" value="B" readonly>B</td>
								<td><input type=checkbox name="58" value="C" readonly>C</td>
								<td><input type=checkbox name="59" value="C#" readonly>C#</td>
								<td><input type=checkbox name="510" value="D" readonly>D</td>
								<td><input type=checkbox name="511" value="D#" readonly>D#</td>
								<td><input type=checkbox name="512" value="E" readonly>E</td>
							</tr>
						</table>
						
					<input type="hidden" name="nombre" value="<%=obtieneAtributo(request, "valNombre")%>">
					<input type="hidden" name="apellido" value="<%=obtieneAtributo(request, "valApellido")%>">
					<input type="hidden" name="id" value="<%= request.getAttribute("valId")%>">
					
					</div>
					
					<div class="row col-md-12" align="center">&nbsp;</div>
					
					
					<div class="row col-md-12" align="center"><p><%=obtieneAtributo(request, "valorAcorde")%></p></div>
					
					<div class="row col-md-12" align="center">
						<button type="submit" class="btn btn-primary" id="botonBuscar">Buscar Acorde</button>
						<div>&nbsp;</div>
					</div>
				</div>
			</form>

		</div>
	</div>

</body>
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</html>