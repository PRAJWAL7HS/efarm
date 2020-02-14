<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.io.IOException " %>
<%@ page import="java.io.PrintWriter " %>
<%@ page import="javax.servlet.ServletException " %>
<%@ page import="javax.servlet.http.HttpServlet " %>
<%@ page import="javax.servlet.http.HttpServletRequest " %>
<%@ page import="javax.servlet.http.HttpSession " %>
<%@ page import="javax.servlet.http.HttpServletResponse " %>


<%
String name=(String)request.getSession(false).getAttribute("user");

if(name==null)
{
	RequestDispatcher rd=request.getRequestDispatcher("index.html");
	rd.forward(request, response);
}

request.getSession().invalidate();

  

response.sendRedirect(request.getContextPath() + "/index.html"); 
  
  


 
%>
</body>
</html>