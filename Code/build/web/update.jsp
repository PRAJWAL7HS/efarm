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

                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="topbar">
                <div id="topnav">
                   

                </div>

                <br class="clear" />
            </div>
        </div>
        <table align="center" style="border-style: solid" border="1" width="20">
           

            <form action="updateproc.jsp" method="post">

                <%    Connection con1 = databasecon.getconnection();
                    PreparedStatement ps1 = con1.prepareStatement("select * from trade where no=?");
                    ps1.setString(1, uname);

                    ResultSet rs = ps1.executeQuery();
                    while (rs.next()) {
                %>


                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;    <font color="green" size="4" >ItemName</font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <font color="blue"> <input type="text" hieght="3" width="10" name="username" value="<%=rs.getString(1)%>" ></font><br><br>
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" > Rate </font>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <input type="text" name="email" value="<%=rs.getString(4)%>" ><br><br>

                                    <center>                                   &
<input id="submit_edit" type="submit" value="Submit"></input>

                                                            <%   }


                                                            %>


                                                            <input type="hidden" name="idd" value="<%=uname%>"></input>

<input id="submit_edit" type="submit" value="Update"></input>
                                    </center>

                                                            </form>
                                                            </table>

                                                            <!-- ####################################################################################################### -->











                                                            <!-- ####################################################################################################### -->


                                                            </body>

                                                            </html>