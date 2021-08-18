<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View all Users</title>


	<link rel="stylesheet" type="text/css" href="css/table.css">
	<link rel="shortcut icon" type="image/png" href="images/logo1.jpg">
</head>
<body>


<%
           
          String url ="jdbc:mysql://localhost:3306/pvbank";
  		String user = "root";
  		String pass = "1Prabhabas2@";
  		
  		String query = "select * from pvmodel ORDER BY id";
  		
  		
  		Connection con = DriverManager.getConnection(url,user,pass);
  		Statement st = con.createStatement();
  		ResultSet rs = st.executeQuery(query);
   
          
 %>

  <h1>User Details</h1>

<table>

	<tr>

		<th>Id</th>

		<th>Name</th>

		<th>E-Mail</th>

		<th>Balance</th>

	</tr>

	<tbody>
               <% while(rs.next()){ %>
        
     		 <TR>
       		<TD> <%= rs.getString(1)%></td>
      		 <TD> <%= rs.getString(4)%></TD>
      		 <TD> <%=  rs.getString(3) %></TD>
      		 <TD> <%= rs.getString(2) %></TD>
      			 
      			</TR>
      			<% } %>
           

            

        </tbody>

</table>

</body>
</html>