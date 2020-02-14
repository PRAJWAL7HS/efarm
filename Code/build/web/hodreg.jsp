<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>E-FARMING</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="top">
        
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
                        
      
        <li class="last"><a href="index.html">Back</a></li>
                    </ul>
		
	<br class="clearfix" />
	</div>
    <br><br>
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
        <form name="myform" method="post" action="hodregact.jsp">

            <center>        <table align="center">
                <center>
                <tr>
                    <td>
                        <td><strong><font size="5" color="black">Full Name:</font></strong></td>
                        <td><input type="text" name="empname" id="empname1" placeholder=FullName style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>

                <tr>
                    <td>
                        <td><strong><font size="5" color="black">User Name:</font></strong></td><td><input type="text"
                                                                                                           class="uname" name="username" placeholder= UserName style="height:30px; width:200px" />&nbsp;<span class="status"></span></td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <td><strong><font size="5" color="black">Password: </font></strong></td>
                        <td> <input type="password" name="password" id="password1" placeholder= Password style="height:30px; width:200px"></input></td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <td><strong><font size="5" color="black">Trade Center Name</font></strong></td>
                        <td><input type="text" name="trade" id="empname1" placeholder= address style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>

 <tr>
                    <td>
                        <td><strong><font size="5" color="black">Address:</font></strong></td>
                        <td><input type="text" name="address" id="empname1" placeholder= address style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <td><strong><font size="5" color="black">City:</font></strong></td>
                        <td><input type="text" name="City" id="empname1" placeholder=city style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <td><strong><font size="5" color="black">State:</font></strong></td>
                        <td><input type="text" name="State" id="empname1" placeholder=state style="height:30px; width:200px"> </input></td>
                    </td>
                </tr>
               

                <tr>
                    <td>
                        <td><strong><font size="5" color="black">DOB: </font></strong></td>
                        <td><input type="date" name="dob" id="dob1" style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>

                <tr>
                    <td>
                        <td><strong><font size="5" color="black">Email: </font></strong></td> 
                        <td><input type="email" name="email" id="email1" placeholder= Email style="height:30px; width:200px"></input></td> 
                    </td>
                </tr>

                <tr>
                    <td>
                        <td><strong><font size="5" color="black">Contact: </font></strong></td> 
                        <td><select id="kk" style="height:34px; width:50px">
                                <option value="+91">+91</option>

                                <input type="text" name="contactno" id="contactno1" placeholder= MobileNo. style="height:30px; width:200px"></input>
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

        <!-- ####################################################################################################### -->

        </div>
    </body>
</html>