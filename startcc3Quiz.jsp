<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rules</title>
</head>
<script>
var param1var = getQueryVariable("param1");
function getQueryVariable(variable) {
  var query = window.location.search.substring(1);
  var vars = query.split("=");
  var nam = vars[1];
  //document.getElementById("sessionValue").value = nam;
  if(nam == undefined){
	  window.top.location.href="Welcome.jsp";
  }
}
</script>
<body background="images/login.jpg">
<form name="visualBasic" action="cc3.jsp">
<br><br><br><br><br><br><br><br><br><br>
<center>
<h1>You have selected Cloud computing Level 3</h1>
<h2>Rules :</h2>
<table>
<tr><td>1) Each questions 2 marks</td></tr>
<tr><td>2) No negative marks</td></tr>
<tr><td>3) You should get minimum 6 points to pass this exam</td></tr>
</table>
<h2>All the best!!!</h2>
<br>
<input type="hidden" id="sessionValue" name="sessionValue" value=<%=request.getParameter("id") %> >
<input type="submit" value="Start Quiz">
</center>
</form>
</body>
</html>