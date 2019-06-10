<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <Title>available user</Title>
		<style>
#availuser {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#availuser td, #availuser th {
  border: 1px solid #ddd;
  padding: 8px;
}

#availuser tr:nth-child(even){background-color: #f2f2f2;}

#availuser tr:hover {background-color: #ddd;}

#availuser th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
.dot {
  height: 10px;
  width: 10px;
  background-color: red;
  border-radius: 50%;
  display: inline-block;
}
.dot1 {
  height: 10px;
  width: 10px;
  background-color: green;
  border-radius: 50%;
  display: inline-block;
}
</style>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
        <script type="text/javascript">
        var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('availableusers.jsp').fadeIn("slow");
        }, 2000); // autorefresh the content of the div after
                   //every 1000 milliseconds(1sec)
        </script>
    </head>
    <body>
        <div id="load_me">
		<h1>Available users:</h1>
<table border="1" id="availuser">
<tr>
<td>username</td>
<td>status</td>


</tr>
<%

		ResultSet rs=operation.selectonline();
		while(rs.next()){
%>
<tr>
<td><a href='table1.jsp'><%=rs.getString("first_name") %></a></td>
<td>  <span class="dot1"></span>
</td>

</tr>
<%
}
		
		rs=operation.selectoffline();
		while(rs.next()){
%>
<tr>
<td><%=rs.getString("first_name") %></td>
<td>  <span class="dot"></span>
</td>

</tr>

<%
		}
		
%></div>
    </body>
</html>