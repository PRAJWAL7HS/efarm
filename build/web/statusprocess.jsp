<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>

<html>
    <head>
        <title>Registration Page</title>

    </head>
    <script>
        function closeWin() {
    myWindow.close();
}
    </script>
    <body>
        <%
 Object obj2 = session.getAttribute("user");
    String str = (String) obj2;
     
            String id=request.getParameter("idd");
            
            String purpose = request.getParameter("purpose");
            
     
            try {

                Connection con = databasecon.getconnection();

                PreparedStatement ps = con.prepareStatement("insert into statu values(?,?)");
                ps.setString(1,id);
                ps.setString(2,purpose);  
               


                ps.executeUpdate();
                 PreparedStatement ps1 = con.prepareStatement("update sale set status='buy' where name=?");
                ps1.setString(1,id);
                  
               


                ps1.executeUpdate();



            } catch (Exception e1) {
                out.println(e1.getMessage());
            }


        %>
        <button onclick="closeWin()">Close</button>

    </body>
</html>


