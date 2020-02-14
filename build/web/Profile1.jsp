<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Big Business
Description: A two-column, fixed-width design with a bright color scheme.
Version    : 1.0
Released   : 20120210
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>E-FARMING</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>

   <div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">E-FARMING</a></h1>
		</div>
		<div id="slogan">
			 
		</div>
	</div>
	<div id="menu">
                     <ul>
       <li><a href="employeehome.jsp">Home</a></li>
        <li><a href="viewrates.jsp">View Rates</a></li>
        <li><a href="Result.jsp">Results</a></li>
       <li class="selected"><a href="Profile1.jsp">Profile</a></li>
        <li class="last"><a href="logout.jsp">Logout</a></li>
      </ul>
      <br class="clearfix" />
	</div>

                <br class="clear" />
<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>
	
	
	 <%!
	 Statement stmt;
	
      ResultSet rs;
      String email;
      String f,p,e,u,d,c,w,x,y,z;
%>	
		<% 
			String name=(String)request.getSession(false).getAttribute("user");
                        System.out.println(name);
                    
			
			if(name==null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("index.html");
				rd.forward(request, response);
			}
			
         %>
	
	
	
	
	<% 
try
{
rs=null;
Class.forName("com.mysql.jdbc.Driver");


Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eform","root","root");
stmt=con.createStatement();  
rs=stmt.executeQuery("select * from seller where uname= '" + name + "'");
      
      if (rs.next())
      {
    	  f=rs.getString(1);
    	  p=rs.getString(2);
    	   e=rs.getString(3);
    	  u=rs.getString(4);
            d=rs.getString(5);
              c=rs.getString(6);
               w=rs.getString(7);
    	  x=rs.getString(8);
            y=rs.getString(9);
             
      %>
<table align="center">
	<form action="profileedit.jsp" method="post">
            <center>  <br>
              
		
                    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;    <font color="green" size="4" >Fullname</font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <font color="blue"> <input type="text" hieght="3" width="10" name="#" value="<%=f %>" disabled></font><br><br>
    	&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" > Username </font>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <input type="text" name="#" value="<%=p %>" disabled><br><br>
	&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <font color="green" size="4" > Password </font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="#" value="<%=e %>" disabled><br><br>
          
    	&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" >Address</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="#" value="<%=u %>" disabled><br><br>
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" >  City </font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="#" value="<%=d %>" disabled><br><br>
      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" >  State </font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="#" value="<%=c %>" disabled><br><br>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" >  Email</font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="#" value="<%=w %>" disabled><br><br>
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" >  PhoneNumber</font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="#" value="<%=x %>" disabled><br><br>
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" >  DOB </font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="#" value="<%=y %>" disabled><br><br>

	</form>
            
    	  
<%}
} catch(Exception e){
    e.printStackTrace();
} %>
</table>
	
	</div>
     </div>
</div>
</div>
  </body>
</html>
       
      </ul>
        
    </div>
    
    <br class="clear" />
  </div>
</div>