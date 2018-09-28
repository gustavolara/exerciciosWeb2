<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.ufpr.tads.web2.beans.Cliente" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/styles.css"> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar cliente</title>
</head>
<body>
<% if (session.getAttribute("username") == null) {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
		String msg = "Usuario deve se autenticar para acessar o sistema";
		request.setAttribute("msg", msg);
		dispatcher.forward(request,response);
	} else { 
		Cliente c = (Cliente) request.getAttribute("cliente");
	%>
		<div class="flex-container">
			<div class="form-cliente">
				<form class="purple-box" action="AlterarClienteServlet" method="post" class="form-group">
					<input type="hidden" name="id" value="<%= c.getId() %>"/>
					<h2 class="form-title">Alterar cliente</h2>
					<div class="row">
						<div class="col-md-6">
							CPF: <input  type="text" name="cpf" maxlength="11" class="form-control"  value="<%= c.getCpf() %>" required/>
						</div>
						<div class="col-md-6">
							Nome: <input type="text" name="nome" class="form-control" value="<%= c.getNome() %>" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							Email <input type="email" name="email" class="form-control"  value="<%= c.getEmail() %>" required/>
						</div>
						<div class="col-md-6">
							Data <input type="date" name="data" class="form-control" value="<%= c.getData() %>" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							Rua <input type="text" name="rua" class="form-control" value="<%= c.getRua() %>" required/>
						</div>
						<div class="col-md-2">
							Numero <input type="number" name="nr" class="form-control" value="<%= c.getNr() %>" required/>
						</div>
						<div class="col-md-4">
							CEP <input type="text" name="cep" maxlength="8" class="form-control" value="<%= c.getCep() %>" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">						
							Cidade <input type="text" name="cidade" class="form-control" value="<%= c.getCidade() %>" required/>
						</div>
						<div class="col-md-6">
							UF <input type="text" name="uf" maxlength="2" class="form-control" value="<%= c.getUf() %>" required/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<a href='${pageContext.request.contextPath}/ClientesServlet' class="btn btn-warning btn-new" type="button">Cancelar</a>
						</div>
						<div class="col-md-6">
							<button class="btn btn-success btn-new" type="submit">Salvar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	<% } %>

</body>
</html>