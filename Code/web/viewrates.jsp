<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>E-FARMING</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
      <link rel="stylesheet" type="text/css" href="style.css" />
        <script LANGUAGE="Javascript" SRC="js/vali.js"></script>
     
<SCRIPT LANGUAGE="JavaScript">
	<!--
		function fnShowDetails(idd,U)
			{
				var URL = U+"?uname="+idd;
				fnEmpPopUp(URL,500,600);
			}
	//-->
	</SCRIPT>


    </head>
    <body id="top">
        <% String trade = (String) request.getSession(false).getAttribute("trade");
           
            Object obj2 = session.getAttribute("username");
            String str = (String) obj2;
            String branch = request.getParameter("branch");
            String year = request.getParameter("year");

            String message = request.getParameter("message");
            if (message != null && message.equalsIgnoreCase("success")) {
                out.println("<h3><font color='Green'>Leave Application Successfully Submitted </font></h3>");
            }

        %> 


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
   
        <li><a href="hodhome.jsp">Home</a></li>
			<li><a href="RateFix.jsp">AddItem</a></li> 
                   <li><a href="Profile.jsp">Profile</a></li>
         <li class="selected"><a href="viewrates.jsp">Viewrates</a></li>      
      
        <li class="last"><a href="logout.jsp">Logout</a></li>
			
	<br class="clearfix" />
			
	<br class="clearfix" />

              	<br class="clearfix" />
	</div>

                <br class="clear" />
                <center>
        <table align="center" style="border-style: solid" border="1" width="35">
                    <caption> <h2 style="color: coral"> </h2></caption>
                    <tr STYLE="background-color: yellowgreen;font-size: 20px;">                                
                                              
                        <td>S.NO</td>
                        <td>Company</td>
                        <td>Item</td>
                        
                        
                        <td>Rate For K.G</td>
                        <td>Address</td>
                        <td>City</td>
                        <td>Phone</td>
                        <td>State</td>
                        
</tr>
            <form action="saleprocess.jsp" method="post">
               
<%
                                                         Connection con1 = databasecon.getconnection();
                                                        PreparedStatement ps1 = con1.prepareStatement("select * from trade");
                                                       
                                                        
                                                        ResultSet rs = ps1.executeQuery();
                                                        int a=1;
                                                              while(rs.next()){ 
                                                                  String x=rs.getString(1);
                                                                  String r=rs.getString(2);
                                                                  String s=rs.getString(3);
                                                                  
                                                                  String t=rs.getString(4);
                                                                 
                                                                  
                                                                  String y=rs.getString(5);
                                                                  
                                                                  String z=rs.getString(6);
                                                                 String w=rs.getString(7);
                                                                 String h=rs.getString(8);
                                                                 
                                                                  %>
                                                                  <tr>
                                                                      <td><%=a%></td>
                                                                      <td><%=x%></td>
                                                                      <td><%=r%></td>
                                                                      <td><%=s%></td>
                                                                      <td><%=y%></td>
                                                                      <td><%=z%></td>
                                                                      <td><%=h%></td>
                                                                      <td><%=w%></td>
                                                                      
                                                                      <td>  <a style="cursor:default" align="c" onclick="fnShowDetails('<%=x%>','update1.jsp')">Sale</a></td> </tr>
                                                              <%
                                                              a++;
                                                              }
                                                              
                
                
%>
                    



                  

            </form>
        </table>

        <!-- ####################################################################################################### -->











        <!-- ####################################################################################################### -->
        <br><br><br><br><br>

    </body>
   
</html>