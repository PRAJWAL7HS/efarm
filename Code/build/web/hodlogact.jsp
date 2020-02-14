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
        ResultSet rs = st.executeQuery("select * from buyer where uname='"+username+"' and password='"+password+"'");
       if(rs.next())
        {
         String  user = rs.getString(2);
          String  trade = rs.getString(11);
          String  name = rs.getString(1);
           session.setAttribute("name",name);
          String  add = rs.getString(4);
           session.setAttribute("add",add);
          String  city = rs.getString(5);
           session.setAttribute("city",city);
          String  state = rs.getString(6);
           session.setAttribute("state",state);
          String  phone = rs.getString(8);
           session.setAttribute("phone",phone);
		   session.setAttribute("user",user);
                   session.setAttribute("trade",trade);
		   System.out.println("User:"+user);
			response.sendRedirect("hodhome.jsp");
        }
       else 
        {
            response.sendRedirect("hodlog.html?m1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in hodlogact"+e.getMessage());
    }
%>