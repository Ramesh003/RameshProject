<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cloud computing l3 quiz</title>
</head>
<script>
window.onload=function(){
	  var req = document.getElementById("ses").value;
	  if(req == "null"){
		  window.top.location.href="Welcome.jsp";
	  }
	};
	function result(){
		var count=0;
		if(document.getElementById("q1d").checked){
			var one = document.getElementById("q1d").value;
			if(one == "d"){
				count = count + 2;
			}
		}
		if(document.getElementById("q2b").checked){
			var two = document.getElementById("q2b").value;
			if(two == "b"){
				count = count + 2;
			}
		}
		if(document.getElementById("q3c").checked){
			var three = document.getElementById("q3c").value;
			if(three == "c"){
				count = count + 2;
			}
		}
		if(document.getElementById("q4a").checked){
			var four = document.getElementById("q4a").value;
			if(four == "a"){
				count = count + 2;
			}
		}
		if(document.getElementById("q5d").checked){
			var five = document.getElementById("q5d").value;
			if(five == "d"){
				count = count + 2;
			}
		}
		var total = count;
		//alert("Congratulation !!! you have scored :" +total + "  Points");
		window.top.location.href="reultPage.jsp?name=" + document.getElementById("ses").value +"&total="+total+"&level=cc3";
		
	}
</script>
<body>
<input type="hidden" name="ses" id="ses" value=<%= request.getParameter("sessionValue") %>>
<hr></hr>
<b>
Q 1 - What is Cloud Computing replacing?
<hr></hr>
<pre>
a) <input type="radio" id="q1a" value="a" name="q1"> Corporate data centers 
b) <input type="radio" id="q1b" value="b" name="q1"> Expensive personal computer hardware
c) <input type="radio" id="q1c" value="c" name="q1"> Expensive software upgrades 
d) <input type="radio" id="q1d" value="d" name="q1"> All of the above 
</pre>
<br>
<hr>
Q 2 - What is the number one concern about cloud computing?
<hr>
<pre>
a) <input type="radio" id="q2a" value="a" name="q2"> Too expensive 
b) <input type="radio" id="q2b" value="b" name="q2"> Security concerns
c) <input type="radio" id="q2c" value="c" name="q2"> Too many platforms
d) <input type="radio" id="q2d" value="d" name="q2"> Accessability
</pre>
<br>
<hr>
Q 3 - Which of these companies is not a leader in cloud computing?
<hr>
<pre>
a) <input type="radio" id="q3a" value="a" name="q3"> Google 
b) <input type="radio" id="q3b" value="b" name="q3"> Amazon
c) <input type="radio" id="q3c" value="c" name="q3"> Blackboard
d) <input type="radio" id="q3d" value="d" name="q3"> Microsoft
</pre>
<br>
<hr>
Q 4 - Google Docs is a type of cloud computing.
<hr>
<pre>
a) <input type="radio" id="q4a" value="a" name="q4"> True 
b) <input type="radio" id="q4b" value="b" name="q4"> False
</pre>
<br>
<hr>
Q 5 - Which one of these is not a cloud computing pricing model?
<hr>
<pre>
a) <input type="radio" id="q5a" value="a" name="q5"> Free 
b) <input type="radio" id="q5b" value="b" name="q5"> Pay Per Use
c) <input type="radio" id="q5c" value="c" name="q5"> Subscription
d) <input type="radio" id="q5d" value="d" name="q5"> Ladder
</pre>
</b>
<hr>
<center><button onclick="result()">Submit</button></center>
<hr>
</body>
</html>