<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Erro</title>
</head>
<body>
	<h3 style='color: red'>Ocorreu um erro</h3>
	<h3>Erro:<%= session.getAttribute("msg") %></h3>
	<a href='${pageContext.request.contextPath}/<%= session.getAttribute("page") %>'>Início</a>
	<br>
	
	<p>Em caso de problemas, contatar o adminstrador:</p>
      <p><% ServletContext ctx = getServletContext();
      		out.print(ctx.getAttribute("adminEmail")); %></p>
</body>
</html>