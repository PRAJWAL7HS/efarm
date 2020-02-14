<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>
<font color="#cc0033" size="5"><strong>Welcome Admin </font><font color="#cc00cc" size="5"></strong></font>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Leave World</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="style.css" />
        <script LANGUAGE="Javascript" SRC="js/vali.js"></script>
     

    </head>
    <body id="top">
        <%
            Object obj2 = session.getAttribute("username");
            String str = (String) obj2;
            String uname = request.getParameter("uname");

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
        <li><a href="viewrates.jsp">View Rates</a></li>
        <li><a href="Result.jsp">Results</a></li>
       <li><a href="Profile1.jsp">Profile</a></li>
        <li class="last"><a href="logout.jsp">Logout</a></li>
      </ul>

              	<br class="clearfix" />
	</div>

        </div>
        <table align="center" style="border-style: solid" border="1" width="20">
           

            <form action="saleprocess.jsp" method="post">
                <%
            String com=request.getParameter("uname");
                %>

                  
                


                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;    <font color="green" size="4" >Company</font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <font color="blue"> <input type="text" hieght="3" width="10" name="Company" value="<%=com%>" ></font><br><br>
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" > Item </font>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <input type="text" name="Item" value="" ><br><br>
 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" > Name </font>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <input type="text" name="name1" value="" ><br><br>

   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;    <font color="green" size="4" >Quantity IN K.G</font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <font color="blue"> <input type="text" hieght="3" width="10" name="Quantity" value="" ></font><br><br>
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" > PhoneNumber </font>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <input type="text" name="PhoneNumber" value="" ><br><br>
 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" > Address </font>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <input type="text" name="Address" value="" ><br><br>

  

                                                           


                                                            <input type="hidden" name="idd" value="<%=uname%>"></input>

<input id="submit_edit" type="submit" value="Sale"></input>


                                                            </form>
                                                            </table>

                                                            <!-- ####################################################################################################### -->











                                                            <!-- ####################################################################################################### -->


                                                            </body>

                                                            </html>