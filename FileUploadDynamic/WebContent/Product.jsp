<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@page import="java.sql.*" %>

<%
try {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taskdb","root","");
	  PreparedStatement ps=con.prepareStatement("select * from product");
	  ResultSet rs=ps.executeQuery();
	  %>
	<div class="container">            
  <table class="table table-hover">
    <thead>
      <tr><th>CATEGORY</th><th>PNAME</th><th>PRICE</th><th>DESCRIPTION</th> <th>IMAGE</th></tr>
    </thead>
     <% while(rs.next())
	  {
		  %>
		      <tr>
		       <td><%=rs.getString("category")%></td>
		        <td><%=rs.getString("pname")%></td>
		        <td><%=rs.getString("price")%></td>
		         <td><%=rs.getString("description")%></td>
		        <td><img src="imgupload/<%=rs.getString("image")%>" height="100" width="100"/></td>
		        </tr>
		  <%
	  }
      %>
	  </table>
	  </div> 
	  <% 
	
	  con.close();
}catch(Exception e){ System.out.println(e);}
%>
</body>
</html>