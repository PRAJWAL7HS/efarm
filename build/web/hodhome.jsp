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
         Object obj2 = session.getAttribute("user");
    String str = (String) obj2;
     
                String message = request.getParameter("message");
                if (message != null && message.equalsIgnoreCase("success")) {
                out.println("<h3><font color='Green'> Item added Successfully Submitted </font></h3>");
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
   
        <li class="selected"><a href="hodhome.jsp">Home</a></li>
			<li><a href="RateFix.jsp">AddItem</a></li> 
                
                   <li><a href="Profile.jsp">Profile</a></li>
         <li><a href="viewrates.jsp">Viewrates</a></li>      
      
        <li class="last"><a href="logout.jsp">Logout</a></li>
			
	<br class="clearfix" />
	</div>
    <br><br>
		<div id="splash">
                    <center><h3>Welcome to SELLER</h3></center>
			
		</div>
		<br class="clearfix" />
	</div>


</body>
</html>