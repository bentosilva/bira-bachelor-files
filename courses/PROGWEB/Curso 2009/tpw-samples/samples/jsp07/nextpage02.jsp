<HTML>
	<BODY>
		Nome novamente: <%= session.getAttribute( "theName" ) %>
	</BODY>
</HTML>
<%
  // para destruir a sess�o use a linha abaixo
  session.invalidate();
%>
