<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>

<html>
    <head>
        <title>Registration Page</title>

    </head>

    <body>
        <%

            String name = (String) request.getSession(false).getAttribute("user");
            String trade = (String) request.getSession(false).getAttribute("trade");
            String add = (String) request.getSession(false).getAttribute("add");
           String city = (String) request.getSession(false).getAttribute("city");
           String state = (String) request.getSession(false).getAttribute("state");
           String phone = (String) request.getSession(false).getAttribute("phone");
           
           
            System.out.println(name);

            if (name == null) {
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.forward(request, response);
            }

            
            String item = request.getParameter("item");
String rate = request.getParameter("rate");


            //BigInteger phno = new BigInteger(phoneno);
            try {

                Connection con = databasecon.getconnection();

                PreparedStatement ps = con.prepareStatement("insert into trade values(?,?,?,?,?,?,?,?)");
               ps.setString(1, trade);

                ps.setString(2, item);
ps.setString(3,rate);
ps.setString(4,null);
 ps.setString(5, add);

                ps.setString(6, city);
ps.setString(7,state);
ps.setString(8,phone);





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


