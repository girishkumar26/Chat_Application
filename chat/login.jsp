<!DOCTYPE html>
<html>
<head>
<style>
input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 30%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
</style>
<meta charset="ISO-8859-1">
<title>login</title>

</head>
<body style="background-image:url('bg.jpg');">
<center>
<form action="logincheck" method="GET">
username :<input type="text" name="userid" placeholder="enter your name.."/><br>
password :<input type="password" name="password" placeholder="password"/><br>

<input type="submit" /> </form>
<p>New user. <a href="index.jsp">REGISTER</a>.
</center> </body>

</html>