<%@ include file="header.jsp" %>

	<form action="index_action.jsp">
		<tr><td>&nbsp;</td></tr>
		<tr><td class="titulo">Preencha suas informa��es:</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td class="campo">Nome: <input type="text" name="nome" size="40"></td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td class="campo">Endere�o: <input type="text" name="endereco" size="50"></td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td align="center"><input type="submit" name="enviar" value="Enviar"></td></tr>
	</form>

<%@ include file="footer.jsp" %>
