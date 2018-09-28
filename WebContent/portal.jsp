<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<title>Portal</title>
</head>
<body>
	<% if (session.getAttribute("username") == null) {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
		String msg = "Usuario deve se autenticar para acessar o sistema";
		request.setAttribute("msg", msg);
		dispatcher.forward(request,response);
	} else { %>
	<jsp:useBean id="loginBean" class="com.ufpr.tads.web2.beans.LoginBean" scope="session"/>
	<div class="flex-container">
		<div class="purple-box login">
			<div class="col-md-12">
				<h1>Bem vindo, <jsp:getProperty name="loginBean" property="nome"/>!</h1>
				<h3>Menu</h3>
				<div>
					<a class="btn btn-primary" href='${pageContext.request.contextPath}/ClientesServlet'>Cadastro de clientes</a>
					<a class="btn btn-warning" href='${pageContext.request.contextPath}/LogoutServlet'>Logout</a>
				</div>
				<div class="footer">
					<p>Em caso de problemas, contatar o adminstrador.</p>
					<p>
						<% ServletContext ctx = getServletContext();
						out.print(ctx.getAttribute("adminEmail")); %>
					</p>
				</div>
			</div>
		</div>
	</div>
    <% } %>
</body>
</html>