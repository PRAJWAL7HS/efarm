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

            String Company = request.getParameter("Company");

            String Item = request.getParameter("Item");
          String name1 = request.getParameter("name1");
          
String Quantity = request.getParameter("Quantity");
  String PhoneNumber = request.getParameter("PhoneNumber");

            String Address = request.getParameter("Address");
          
String idd = request.getParameter("idd");



            //BigInteger phno = new BigInteger(phoneno);
            try {

                Connection con = databasecon.getconnection();


PreparedStatement ps = con.prepareStatement("insert into sale values(?,?,?,?,?,?,?)");
                ps.setString(1, Company);

               
            

                ps.setString(2, Item);
                ps.setString(3, name1);
              
               
                ps.setString(4, Quantity);
                        
              ps.setString(5, PhoneNumber);

               
            

                ps.setString(6, Address);
               
               ps.setString(7, "new");
               
              


                ps.executeUpdate();


                //out.print(Successfully Registered);
                response.sendRedirect("employeehome.jsp?message=success");
                out.println("SUCCESSFULLY UPdated");
            } catch (Exception e1) {
                out.println(e1.getMessage());
            }


        %>
    </body>
</html>


