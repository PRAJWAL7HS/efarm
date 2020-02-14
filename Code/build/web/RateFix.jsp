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
<body id="top">
    <%
         Object obj2 = session.getAttribute("username");
    String str = (String) obj2;
     
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
   
        <l><a href="hodhome.jsp">Home</a></li>
			<lii class="selected"><a href="RateFix.jsp">AddItem</a></li> 
                   <li><a href="Profile.jsp">Profile</a></li>
         <li><a href="viewrates.jsp">Viewrates</a></li>      
      
        <li class="last"><a href="logout.jsp">Logout</a></li>
			
	<br class="clearfix" />
        
 <br class="clearfix" />
	</div>

                <br class="clear" />

         
                <center>
<table align="center">
	<form action="additemprocess.jsp?" method="post">
          
                </br>
		
		
                   
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" >  Item Name </font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="item" value="" ><br><br>
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <font color="green" size="4" >  Rate For Item For K.G </font> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="rate" value="" ><br><br>
   
	<input id="submit_edit" type="submit" value="Submit"></input>
        <br><br><br><br>
	</form>
</table>
                </center>
</div>
</body>

</html>