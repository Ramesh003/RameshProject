<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cloud computing l2 Quiz</title>
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
	if(document.getElementById("q1b").checked){
		var one = document.getElementById("q1b").value;
		if(one == "b"){
			count = count + 2;
		}
	}
	if(document.getElementById("q2a").checked){
		var two = document.getElementById("q2a").value;
		if(two == "a"){
			count = count + 2;
		}
	}
	if(document.getElementById("q3c").checked){
		var three = document.getElementById("q3c").value;
		if(three == "c"){
			count = count + 2;
		}
	}
	if(document.getElementById("q4c").checked){
		var four = document.getElementById("q4c").value;
		if(four == "c"){
			count = count + 2;
		}
	}
	if(document.getElementById("q5c").checked){
		var five = document.getElementById("q5c").value;
		if(five == "c"){
			count = count + 2;
		}
	}
	var total = count;
	//alert("Congratulation !!! you have scored :" +total + "  Points");
	window.top.location.href="reultPage.jsp?name=" + document.getElementById("ses").value +"&total="+total+"&level=cc2";
	
}
</script>
<body>
<input type="hidden" name="ses" id="ses" value=<%= request.getParameter("sessionValue") %>>
<hr></hr>
<b>
Q 1 - What is Cloud Foundry?
<hr></hr>
<pre>
a) <input type="radio" id="q1a" value="a" name="q1"> A factory that produces cloud components 
b) <input type="radio" id="q1b" value="b" name="q1"> VMware-led open source PaaS
c) <input type="radio" id="q1c" value="c" name="q1"> An industry wide PaaS initiative 
d) <input type="radio" id="q1d" value="d" name="q1"> VMware-led closed source PaaS 
</pre>
<br>
<hr>
Q 2 - Which of the following isn't an advantage of cloud?
<hr>
<pre>
a) <input type="radio" id="q2a" value="a" name="q2"> Easier to maintain a cloud network
b) <input type="radio" id="q2b" value="b" name="q2"> No worries about running out of storage
c) <input type="radio" id="q2c" value="c" name="q2"> Immediate access to computing resources
d) <input type="radio" id="q2d" value="d" name="q2"> Paying only for what you use
</pre>
<br>
<hr>
Q 3 - Which company recently shut the doors on its cloud storage service?
<hr>
<pre>
a) <input type="radio" id="q3a" value="a" name="q3"> Hitachi Data Systems 
b) <input type="radio" id="q3b" value="b" name="q3"> Savvis
c) <input type="radio" id="q3c" value="c" name="q3"> Iron Mountain
d) <input type="radio" id="q3d" value="d" name="q3"> Symantec
</pre>
<br>
<hr>
Q 4 - Which of these services is not platform as a service?
<hr>
<pre>
a) <input type="radio" id="q4a" value="a" name="q4"> Force.com
b) <input type="radio" id="q4b" value="b" name="q4"> Microsoft Azure
c) <input type="radio" id="q4c" value="c" name="q4"> Amazon EC2
d) <input type="radio" id="q4d" value="d" name="q4"> Joyent
</pre>
<br>
<hr>
Q 5 - What feature does not belong in a private cloud?
<hr>
<pre>
a) <input type="radio" id="q5a" value="a" name="q5"> Metered billing 
b) <input type="radio" id="q5b" value="b" name="q5"> Self-service portal
c) <input type="radio" id="q5c" value="c" name="q5"> Dial-home support
d) <input type="radio" id="q5d" value="d" name="q5"> Rapid elasticity
</pre>
</b>
<hr>
<center><button onclick="result()">Submit</button></center>
<hr>
</body>
</html>