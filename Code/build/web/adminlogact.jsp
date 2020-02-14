<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    String password = request.getParameter("password");
    System.out.println(password);
    try{
       
       // String user=null;
        //String password=null;
	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from admin where user='"+username+"' and pwd='"+password+"'");
       if(rs.next())
        {
         String  user = rs.getString(2);
		   session.setAttribute("user",user);
		   System.out.println("User:"+user);
			response.sendRedirect("adminhome.jsp");
        }
       else 
        {
            response.sendRedirect("admin.html?m1=username/password wrong");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in adminlogact"+e.getMessage());
    }
%>



