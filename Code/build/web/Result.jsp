<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>E-FARMING</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
     
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
       <li><a href="employeehome.jsp">Home</a></li>
        <li><a href="viewrates1.jsp">View Rates</a></li>
         <li><a href="sal.jsp">Buy</a></li>
        <li class="selected"><a href="Result.jsp">Results</a></li>      
        <li class="last"><a href="logout.jsp">Logout</a></li>
      </ul>
        	<br class="clearfix" />
	</div>

                <br class="clear" />
                <center>
            <table align="center" style="border-style: solid" border="1" width="40">
            <center>  <caption> <h2 style="color: coral">Information </h2></caption>
                    <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                              
                                <td>S.NO</td>
                        
                        <td>Name</td>
                        
                        
                        <td>Reply from Buyer</td>
                        
                        
                        
</tr>
            <form action="saleprocess.jsp" method="post">
               
<%
                                                         Connection con1 = databasecon.getconnection();
                                                        PreparedStatement ps1 = con1.prepareStatement("select * from statu");
                                                       
                                                        
                                                        ResultSet rs = ps1.executeQuery();
                                                        int a=1;
                                                              while(rs.next()){ 
                                                                  String x=rs.getString(1);
                                                                  String r=rs.getString(2);
                                                                 
                                                                  
                                                                 
                                                                  %>
                                                                  <tr>
                                                                      <td><%=a%></td>
                                                                      <td><%=x%></td>
                                                                      <td><%=r%></td>
                                                                      
                                                                      
                                                                      
                                                                     <%
                                                              a++;
                                                              }
                                                              
                
                
%>
                    



                  

            </form>
        </table>

        <!-- ####################################################################################################### -->



        <br><br><br>







        <!-- ####################################################################################################### -->


    </body>
   
</html>