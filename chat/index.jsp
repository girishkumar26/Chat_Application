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
input[type=email], select {
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
</head>
<body style="background-image:url('bg.jpg');">
<center>
<form method="GET" action="register">
First name:<br>
<input type="text" name="first_name" placeholder="username">
<br>
Last name:<br>
<input type="text" name="last_name" placeholder="lastname">
<br>
password:<br>
<input type="password" name="password" placeholder="password">
<br>
Email Id:<br>
<input type="email" name="email" placeholder="Email address">
<br><br>
<input type="submit" value="submit">
</form>
</center>
</body>
</html>