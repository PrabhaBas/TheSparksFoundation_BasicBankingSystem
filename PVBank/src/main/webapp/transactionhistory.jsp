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
    <title>Transaction History</title>
    <link rel="shortcut icon" type="image/png" href="logo1.jpg">
    <link rel="stylesheet" href="css/transactionhistory.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/createuser.css">
    <link rel="stylesheet" href="css/button.css">
</head>
<body>
 <%
           
          String url ="jdbc:mysql://localhost:3306/pvbank";
  		String user = "root";
  		String pass = "1Prabhabas2@";
  		
  		String query = "select * from pvsender ORDER BY sno";
  		
  		
  		Connection con = DriverManager.getConnection(url,user,pass);
  		Statement st = con.createStatement();
  		ResultSet rs = st.executeQuery(query);
   
          
 %>






<div class="container">
        <h1 style="text-align:center;">Transaction History</h1>
        
       <br>
       <div class="table-responsive-sm">
    <table class="table table-hover table-striped table-condensed table-bordered">
        <thead>
            <tr>
                <th class="text-center">S.No.</th>
                <th class="text-center">Sender</th>
                <th class="text-center">Receiver</th>
                <th class="text-center">Amount</th>
                <th class="text-center">Date & Time</th>
            </tr>
       </thead>
       
      	<tbody>
               <% while(rs.next()){ %>
        
     		 <TR>
       		<TD> <%= rs.getString(1)%></td>
      		 <TD> <%= rs.getString(5)%></TD>
      		 <TD> <%=  rs.getString(4) %></TD>
      		 <TD> <%= rs.getString(2) %></TD>
      			 <TD> <%=  rs.getString(3) %></TD>
      			</TR>
      			<% } %>
           

            

        </tbody>
    </table>
    </div>
    </div>
</body>
</html>