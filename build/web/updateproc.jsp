<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>

<html>
    <head>
        <title>Registration Page</title>

    </head>

    <body>
        <%

            String name = (String) request.getSession(false).getAttribute("user");
            System.out.println(name);

            if (name == null) {
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.forward(request, response);
            }

            String username = request.getParameter("username");

            String email = request.getParameter("email");
          
String idd = request.getParameter("idd");


            //BigInteger phno = new BigInteger(phoneno);
            try {

                Connection con = databasecon.getconnection();


PreparedStatement ps = con.prepareStatement("update trade set item=?,rate=?where no=?");
                ps.setString(1, username);

               
            

                ps.setString(2, email);
               
                ps.setString(3, idd);
              

                ps.executeUpdate();


                //out.print(Successfully Registered);
                response.sendRedirect("hodhome.jsp?message=success");
                out.println("SUCCESSFULLY UPdated");
            } catch (Exception e1) {
                out.println(e1.getMessage());
            }


        %>
    </body>
</html>


