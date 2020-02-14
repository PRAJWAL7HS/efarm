<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
       <title>E-FARMING</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
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
                       <li class="active"><a href="hodhome.jsp">Home</a></li>

     
               
                    <li><a href="RateFix.jsp">AddItem</a></li>
                    <li class="selected"><a href="updateItem.jsp">Update Item</a></li>
                    
        <li><a href="Profile.jsp">Profile</a></li>
         <li><a href="sal.jsp">Sales</a></li>             
        <li class="last"><a href="logout.jsp">Logout</a></li>
      </ul>

                <br class="clearfix" />
	</div>

                <br class="clear" />
     
        <center>   <table align="center" style="border-style: solid" border="1" width="20">
                    <caption> <h2 style="color: coral">Item List</h2></caption>
                    <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                              
                        <td>S.NO</td>
                        <td>Name</td>
                        <td>Rate</td>
                        
</tr>
            <form action="" method="post">
               
<%
                                                         Connection con1 = databasecon.getconnection();
                                                        PreparedStatement ps1 = con1.prepareStatement("select * from trade where company=?");
                                                       
                                                        ps1.setString(1, trade);
                                                        ResultSet rs = ps1.executeQuery();
                                                        int a=1;
                                                              while(rs.next()){ 
                                                                  String r=rs.getString(2);
                                                                  String s=rs.getString(3);
                                                                  
                                                                  String t=rs.getString(4);
                                                                 
                                                                  
                                                                  %>
                                                                  <tr> <td><%=a%></td> <td>  <a style="cursor:default" align="c" onclick="fnShowDetails('<%=t%>','update.jsp')"><%=r%></a></td><td><%=s%></td> </tr>
                                                              <%
                                                              a++;
                                                              }
                                                              
                
                
%>
                    



                  

            </form>
        </table>

        <!-- ####################################################################################################### -->











        <!-- ####################################################################################################### -->


    </body>
   
</html>