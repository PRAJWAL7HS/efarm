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
	
     
        <script src="jquery.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $(".uname").change(function() {
                    var uname = $(this).val();
                    if (uname.length >= 3) {
                        $(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");
                        $.ajax({
                            type: "POST",
                            url: "check",
                            data: "uname=" + uname,
                            success: function(msg) {

                                $(".status").ajaxComplete(function(event, request, settings) {

                                    $(".status").html(msg);

                                });
                            }
                        });
                    }
                    else {

                        $(".status").html("<font color=red>Username should be <b>3</b> character long.</font>");
                    }

                });
            });
        </script>

        <!-- ####################################################################################################### -->
        <div id="menu">
		<ul>
			<li class="first current_page_item"><a href="#">Home</a></li>
			<li><a href="adminlogin.jsp">Admin</a></li>
			<li class="selected"><a href="sellerlog.jsp">Seller</a></li>
			<li><a href="hodlog.html">Buyer</a></li>
			<li><a href="about.html">About</a></li>
			<li class="last"><a href="contact.html">Contact</a></li>
		      
   <br class="clearfix" />
	</div>
	
     
        <style type="text/css">
            .flable {
                color: gray;
            }

            .status {
                font-family: verdana;
                font-size: 12px;
            }

            .uname {
                color: blue;
            }
        </style>

        <!-- ####################################################################################################### -->
        <form name="myform" method="post" action="empregact.jsp">

            <center>   <table align="center">

                <center>    <tr>
                    <td>
                        <td><strong><font size="5" color="black">Full Name:</font></strong></td>
                        <td><input type="text" name="empname" id="empname1" placeholder=FullName required style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>

                <tr>
                    <td>
                        <td><strong><font size="5" color="black">User Name:</font></strong></td>
                        <td><input type="text" class="uname" name="username" placeholder= UserName required style="height:30px; width:200px" />&nbsp;<span class="status"></span></td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <td><strong><font size="5" color="black">Password: </font></strong></td>
                        <td> <input type="password" name="password" id="password1" placeholder= Password required style="height:30px; width:200px"></input></td>
                    </td>
                </tr>

 <tr>
                    <td>
                        <td><strong><font size="5" color="black">Address:</font></strong></td>
                        <td><input type="text" name="address" id="empname1" placeholder= address required style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <td><strong><font size="5" color="black">City:</font></strong></td>
                        <td><input type="text" name="City" id="empname1" placeholder=city required style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <td><strong><font size="5" color="black">State:</font></strong></td>
                        <td><input type="text" name="State" id="empname1" placeholder=state required style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>
               

                <tr>
                    <td>
                        <td><strong><font size="5" color="black">DOB: </font></strong></td>
                        <td><input type="date" name="dob" id="dob1" required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>

                <tr>
                    <td>
                        <td><strong><font size="5" color="black">Email: </font></strong></td> 
                        <td><input type="email" name="email" id="email1" placeholder= Email required style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>

                <tr>
                    <td>
                        <td><strong><font size="5" color="black">Contact: </font></strong></td> 
                        <td><select id="kk" required style="height:34px; width:50px">
                                <option value="+91">+91</option>

                                <input type="text" name="contactno" id="contactno1" placeholder= MobileNo. required style="height:30px; width:200px"></input>
                            </select></td>
                    </td>
                </tr>



                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td>
                        <td><input type="submit" value="Register" style="height:50px; width:55px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                            <input type="reset" value="Reset" style="height:50px; width:50px" /></td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                       
                    </td>
                </tr>





            </table>
        </form>
 <br><br><br>
        <!-- ####################################################################################################### -->

        </div>
    </body>
</html>