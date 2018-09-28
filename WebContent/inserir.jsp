<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserir</title>
</head>
<body>
	<% if (session.getAttribute("username") == null) {
		String msg = "Usuario não está logado";
		String pageRedirect = "index.html";
		session.setAttribute("msg", msg);
		session.setAttribute("page", pageRedirect);
		
		response.sendRedirect(request.getContextPath() + "/erro.jsp");
	} else { %>
	<form action='CadastrarUsuarioServlet' method='POST'>
        Nome: <input type='text' name='nome' required><br>
        Login: <input type='text' name='login' required><br>
        Senha: <input type='password' name='senha' required><br>
        <button type='submit'>Salvar</button><br>
      </form>
      <% } %>
</body>
</html>