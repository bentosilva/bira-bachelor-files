<%
	user.User user = new user.User();
	user.setName(request.getParameter("name"));
	user.setAddress(request.getParameter("address"));
%>
Informa��es<BR>
Nome: <%= user.getName() %><br>
Endere�o: <%= user.getAddress() %><br>
