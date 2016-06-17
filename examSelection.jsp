<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exam Selection</title>
</head>

<script>
window.onload=function(){
	  var req = document.getElementById("sessionValue").value;
	  if(req == "null"){
		  window.top.location.href="Welcome.jsp";
	  }
	};
function subject(){
var e = document.getElementById("subject");
var strUser = e.options[e.selectedIndex].value;
if(strUser == "Select"){
	alert("Please select the language");
}
if(strUser == "CC Quiz 1"){
	window.top.location.href="startcc1Quiz.jsp?id=" + document.getElementById("sessionValue").value;
}
else if(strUser == "CC Quiz 2"){
	window.top.location.href="startcc2Quiz.jsp?id=" + document.getElementById("sessionValue").value;
}
else if(strUser == "CC Quiz 3"){
	window.top.location.href="startcc3Quiz.jsp?id=" + document.getElementById("sessionValue").value;
}
}
</script>
<body background="images/login.jpg"> 
<form> 
<center>
<br><br><br><br><br><br><br><br><br><br>
<label><h2>Welcome <%= request.getParameter("testuid") %>  !!!</h2></label> 
</center>
</form> 
<center>
<br>
<h3>Select the language from the list to start the Quiz</h3>
<select id="subject">
<option id="Select">Select</option>
<option id="CC1">CC Quiz 1</option>
<option id="CC2">CC Quiz 2</option>
<option id="CC3">CC Quiz 3</option>
</select>
<button onclick="subject()">Start</button>
<input type="hidden" id="sessionValue" name="sessionValue" value=<%= request.getParameter("testuid") %> >
</center>
</body>
</html>