<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<script>
window.onload=function(){
	  var req = document.getElementById("sessionValue").value;
	  if(req == "null"){
		  window.top.location.href="Welcome.jsp";
	  }
	  var total = document.getElementById("total").value;
	  if(total>=6){
		  document.getElementById('normal').style.display = 'none';
		  document.getElementById('success').style.display = 'block'; 
	  }else if(total < 6){
		  document.getElementById('success').style.display = 'none';
		  document.getElementById('normal').style.display = 'block';
	  }
	  
	};
	function logout(){
		window.top.location.href="logout.jsp";
	}
	function answers(){
	var level = document.getElementById("level").value;
	var session = document.getElementById("sessionValue").value;
	window.top.location.href="answers.jsp?level="+level+"&session="+session;
	}
</script>
<body background="images/login.jpg">
<br><br><br><br><br><br><br><br>
<center><h1>Result</h1></center>
<input type="hidden" id="sessionValue" name="sessionValue" value=<%=request.getParameter("name") %>>
<input type="hidden" id="total" name="total" value=<%=request.getParameter("total") %>>
<input type="hidden" id="level" name="level" value=<%=request.getParameter("level") %>>
<center>
<div id="success">
<label><h1>Congratulations <%= request.getParameter("name") %>  !!!</h1></label>
<label><h2>You have scored <%= request.getParameter("total") %></h2></label>
<img src="images/smiley.jpg" alt="Smiley face" width="42" height="42">
</div>
<div id="normal">
<label><h1>Better luck next time <%= request.getParameter("name") %></h1></label>
<label><h2>You have scored <%= request.getParameter("total") %></h2></label>
<img src="images/smiley_sad.png" alt="Smiley face" width="42" height="42">
</div>
<br><br>
<button onclick="answers()">Show Answers</button>
<br><br>
<button onclick="logout()">Logout</button>
</center>  
</body>
</html>