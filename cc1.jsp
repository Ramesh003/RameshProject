<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cloud computing l1 Quiz</title>
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
	if(document.getElementById("q1c").checked){
		var one = document.getElementById("q1c").value;
		if(one == "c"){
			count = count + 2;
		}
	}
	if(document.getElementById("q2b").checked){
		var two = document.getElementById("q2b").value;
		if(two == "b"){
			count = count + 2;
		}
	}
	if(document.getElementById("q3b").checked){
		var three = document.getElementById("q3b").value;
		if(three == "b"){
			count = count + 2;
		}
	}
	if(document.getElementById("q4a").checked){
		var four = document.getElementById("q4a").value;
		if(four == "a"){
			count = count + 2;
		}
	}
	if(document.getElementById("q5b").checked){
		var five = document.getElementById("q5b").value;
		if(five == "b"){
			count = count + 2;
		}
	}
	var total = count;
	//alert("Congratulation !!! you have scored :" +total + "  Points");
	window.top.location.href="reultPage.jsp?name=" + document.getElementById("ses").value +"&total="+total+"&level=cc1";
	
}
</script>
<body>
<input type="hidden" name="ses" id="ses" value=<%= request.getParameter("sessionValue") %>>
<hr></hr>
<b>
Q 1 - Amazon Web Services is which type of cloud computing distribution model?
<hr></hr>
<pre>
a) <input type="radio" id="q1a" value="a" name="q1"> Software as a service 
b) <input type="radio" id="q1b" value="b" name="q1"> Platform as a service
c) <input type="radio" id="q1c" value="c" name="q1"> Infrastructure as a service 
</pre>
<br>
<hr>
Q 2 - What is private cloud?
<hr>
<pre>
a) <input type="radio" id="q2a" value="a" name="q2"> A standard cloud service offered via the Internet 
b) <input type="radio" id="q2b" value="b" name="q2"> A cloud architecture maintained within an enterprise data center
c) <input type="radio" id="q2c" value="c" name="q2"> A cloud service inaccessible to anyone but the cultural elite
</pre>
<br>
<hr>
Q 3 - What is the name of the Rackspace cloud service?
<hr>
<pre>
a) <input type="radio" id="q3a" value="a" name="q3"> Cloud On-Demand
b) <input type="radio" id="q3b" value="b" name="q3"> Cloud Servers
c) <input type="radio" id="q3c" value="c" name="q3"> EC2
</pre>
<br>
<hr>
Q 4 - Which Amazon cloud product recently experienced a massive outage?
<hr>
<pre>
a) <input type="radio" id="q4a" value="a" name="q4"> EBS 
b) <input type="radio" id="q4b" value="b" name="q4"> CloudFront
c) <input type="radio" id="q4c" value="c" name="q4"> S3
d) <input type="radio" id="q4d" value="d" name="q4"> SimpleDB
</pre>
<br>
<hr>
Q 5 - What is the name of the organization helping to foster security standards for cloud computing?
<hr>
<pre>
a) <input type="radio" id="q5a" value="a" name="q5"> Cloud Security Standards Working 
b) <input type="radio" id="q5b" value="b" name="q5"> Cloud Security Alliance
c) <input type="radio" id="q5c" value="c" name="q5"> Cloud Security WatchDog
d) <input type="radio" id="q5d" value="d" name="q5"> Security in the Cloud Alliance
</pre>
</b>
<hr>
<center><button onclick="result()">Submit</button></center>
<hr>
</body>
</html>