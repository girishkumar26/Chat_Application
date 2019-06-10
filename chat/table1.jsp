
<html>  
<head>  
<script>  
var request;  
function sendInfo()  
{  
var v=document.vinform.t1.value;  
var url="chatservlet?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('amit').innerHTML+=val;  
}  
}  
  
</script>
<style>
input[type=button], select{
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 12px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 12px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}
a:hover, a:active {
  background-color: red;
}
input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
</style>
  
</head>  
<body style="background-image:url('bg.jpg');">  
 <center>   
<form name="vinform">  
Enter message:<input type="text" name="t1"  >  
<input type="button" name="t2" value ="send" onclick="sendInfo()">
<a href="logout.jsp" class="float-left submit-button" >logout</a></form>  
  
<span id="amit"> </span>  
  </center>
</body>   
</html>  