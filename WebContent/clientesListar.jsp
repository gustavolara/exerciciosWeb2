<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.ufpr.tads.web2.beans.Cliente" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Clientes</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<h1>Clientes Cadastrados</h1>
			</div>
			<div class="col-md-2">
				<a class="btn btn-success btn-new" href="${pageContext.request.contextPath}/FormNovoClienteServlet">Novo</a>
			</div>
		</div>
	<% if (session.getAttribute("username") == null) {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
		String msg = "Usuario deve se autenticar para acessar o sistema";
		request.setAttribute("msg", msg);
		dispatcher.forward(request,response);
	} else {
		ArrayList<Cliente> clientes = (ArrayList<Cliente>) request.getAttribute("clientes");
		if (clientes == null) { %>
			<p>Nada a mostrar</p>
	<% } else { %>
		<table class="table purple-table">
			<tr>
				<th>Cpf</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Acoes</th>
			</tr>
			<% for (int i=0; i<clientes.size(); i++) { %>
			<tr>
				<td><%=clientes.get(i).getCpf() %></td>
				<td><%=clientes.get(i).getNome() %></td>
				<td><%=clientes.get(i).getEmail() %></td>
				<td>
					<a class="btn btn-success" href='${pageContext.request.contextPath}/VisualizarClienteServlet?id=<%=clientes.get(i).getId() %>'><i class="far fa-eye"></i></a>
					<a class="btn btn-warning" href='${pageContext.request.contextPath}/FormAlterarClienteServlet?id=<%=clientes.get(i).getId() %>'><i class="far fa-edit"></i></a>
					<a class="btn btn-danger" href='${pageContext.request.contextPath}/RemoverClienteServlet?id=<%=clientes.get(i).getId() %>'><i class="far fa-trash-alt"></i></a>
				</td>
			</tr>
			<%	} %>
		</table>
		<div>
			<a class="btn btn-primary" href='${pageContext.request.contextPath}/portal.jsp'>Voltar para portal</a>
		</div>
		<% } %>
	</div>
	<% } %>

</body>
</html>