<html>
<body>
<%
String usr=session.getAttribute("userid").toString();

operation.userlogout(usr);
operation.insertion("offline",usr);
session.invalidate();
response.sendRedirect("login.jsp");
%>
</body>
</html>