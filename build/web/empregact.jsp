<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>

<html>
<head>
<title>Registration Page</title>

</head>

<body>
<%

String ename= request.getParameter("empname");
String uname= request.getParameter("username");
String password= request.getParameter("password");
String address= request.getParameter("address");
String City= request.getParameter("City");
String State=request.getParameter("State");

String date= request.getParameter("dob");
String email= request.getParameter("email");
String phoneno=request.getParameter("contactno");


//BigInteger phno = new BigInteger(phoneno);

try
{

Connection con=databasecon.getconnection();

PreparedStatement ps=con.prepareStatement("insert into seller values(?,?,?,?,?,?,?,?,?)");
ps.setString(1,ename);
ps.setString(2,uname);
ps.setString(3,password);
ps.setString(4,address);
ps.setString(5,City);
ps.setString(6,State);

ps.setString(7,email);
ps.setString(8,phoneno);
ps.setString(9,date);


ps.executeUpdate();


//out.print(Successfully Registered);

response.sendRedirect("emplog.html?message=success");
out.println("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>


