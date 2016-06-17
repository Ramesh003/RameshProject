<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
window.onload=function(){
	  var req = document.getElementById("sessionValue").value;
	  if(req == "null"){
		  window.top.location.href="Welcome.jsp";
	  }
	  var level = document.getElementById("level").value;
	  if(level == "cc1"){
		  document.getElementById('l1').style.display = 'block'; 
		  document.getElementById('l2').style.display = 'none';
		  document.getElementById('l3').style.display = 'none';
	  }else if(level == "cc2"){
		  document.getElementById('l1').style.display = 'none';
		  document.getElementById('l2').style.display = 'block';
		  document.getElementById('l3').style.display = 'none';
	  }else if(level == "cc3"){
		  document.getElementById('l1').style.display = 'none';
		  document.getElementById('l2').style.display = 'none';
		  document.getElementById('l3').style.display = 'block'; 
	  }
	  
	};
	function logout(){
		window.top.location.href="logout.jsp";
	}
</script>
<body>
<h1>answers</h1>
<input type="hidden" id="level" name="level" value=<%=request.getParameter("level") %>>
<input type="hidden" name="sessionValue" id="sessionValue" value=<%= request.getParameter("session") %>>
<hr></hr>
<div id="l1">
<b>
Q 1 - Amazon Web Services is which type of cloud computing distribution model?
<hr></hr>
<pre>
a) <input type="radio" id="q1a" value="a" name="q1"> Software as a service 
b) <input type="radio" id="q1b" value="b" name="q1"> Platform as a service
c) <input type="radio" id="q1c" value="c" name="q1" checked> Infrastructure as a service 
</pre>
<br>
<hr>
Q 2 - What is private cloud?
<hr>
<pre>
a) <input type="radio" id="q2a" value="a" name="q2"> A standard cloud service offered via the Internet 
b) <input type="radio" id="q2b" value="b" name="q2" checked> A cloud architecture maintained within an enterprise data center
c) <input type="radio" id="q2c" value="c" name="q2"> A cloud service inaccessible to anyone but the cultural elite
</pre>
<br>
<hr>
Q 3 - What is the name of the Rackspace cloud service?
<hr>
<pre>
a) <input type="radio" id="q3a" value="a" name="q3"> Cloud On-Demand
b) <input type="radio" id="q3b" value="b" name="q3" checked> Cloud Servers
c) <input type="radio" id="q3c" value="c" name="q3"> EC2
</pre>
<br>
<hr>
Q 4 - Which Amazon cloud product recently experienced a massive outage?
<hr>
<pre>
a) <input type="radio" id="q4a" value="a" name="q4" checked> EBS
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
b) <input type="radio" id="q5b" value="b" name="q5" checked> Cloud Security Alliance
c) <input type="radio" id="q5c" value="c" name="q5"> Cloud Security WatchDog
d) <input type="radio" id="q5d" value="d" name="q5"> Security in the Cloud Alliance
</pre>
</b>
</div>
<div id="l2">
<b>
Q 1 - What is Cloud Foundry?
<hr></hr>
<pre>
a) <input type="radio" id="q1a" value="a" name="ql1"> A factory that produces cloud components 
b) <input type="radio" id="q1b" value="b" name="ql1" checked> VMware-led open source PaaS
c) <input type="radio" id="q1c" value="c" name="ql1"> An industry wide PaaS initiative 
d) <input type="radio" id="q1d" value="d" name="ql1"> VMware-led closed source PaaS 
</pre>
<br>
<hr>
Q 2 - Which of the following isn't an advantage of cloud?
<hr>
<pre>
a) <input type="radio" id="q2a" value="a" name="ql2" checked> Easier to maintain a cloud network
b) <input type="radio" id="q2b" value="b" name="ql2"> No worries about running out of storage
c) <input type="radio" id="q2c" value="c" name="ql2"> Immediate access to computing resources
d) <input type="radio" id="q2d" value="d" name="ql2"> Paying only for what you use
</pre>
<br>
<hr>
Q 3 - Which company recently shut the doors on its cloud storage service?
<hr>
<pre>
a) <input type="radio" id="q3a" value="a" name="ql3"> Hitachi Data Systems 
b) <input type="radio" id="q3b" value="b" name="ql3"> Savvis
c) <input type="radio" id="q3c" value="c" name="ql3" checked> Iron Mountain
d) <input type="radio" id="q3d" value="d" name="ql3"> Symantec
</pre>
<br>
<hr>
Q 4 - Which of these services is not platform as a service?
<hr>
<pre>
a) <input type="radio" id="q4a" value="a" name="ql4"> Force.com
b) <input type="radio" id="q4b" value="b" name="ql4"> Microsoft Azure
c) <input type="radio" id="q4c" value="c" name="ql4" checked> Amazon EC2
d) <input type="radio" id="q4d" value="d" name="ql4"> Joyent
</pre>
<br>
<hr>
Q 5 - What feature does not belong in a private cloud?
<hr>
<pre>
a) <input type="radio" id="q5a" value="a" name="ql5"> Metered billing 
b) <input type="radio" id="q5b" value="b" name="ql5"> Self-service portal
c) <input type="radio" id="q5c" value="c" name="ql5" checked> Dial-home support
d) <input type="radio" id="q5d" value="d" name="ql5"> Rapid elasticity
</pre>
</b>
</div>
<div id="l3">
<b>
Q 1 - What is Cloud Computing replacing?
<hr></hr>
<pre>
a) <input type="radio" id="q1a" value="a" name="qc1"> Corporate data centers 
b) <input type="radio" id="q1b" value="b" name="qc1"> Expensive personal computer hardware
c) <input type="radio" id="q1c" value="c" name="qc1"> Expensive software upgrades 
d) <input type="radio" id="q1d" value="d" name="qc1" checked> All of the above 
</pre>
<br>
<hr>
Q 2 - What is the number one concern about cloud computing?
<hr>
<pre>
a) <input type="radio" id="q2a" value="a" name="qc2"> Too expensive 
b) <input type="radio" id="q2b" value="b" name="qc2" checked> Security concerns
c) <input type="radio" id="q2c" value="c" name="qc2"> Too many platforms
d) <input type="radio" id="q2d" value="d" name="qc2"> Accessability
</pre>
<br>
<hr>
Q 3 - Which of these companies is not a leader in cloud computing?
<hr>
<pre>
a) <input type="radio" id="q3a" value="a" name="qc3"> Google 
b) <input type="radio" id="q3b" value="b" name="qc3"> Amazon
c) <input type="radio" id="q3c" value="c" name="qc3" checked> Blackboard
d) <input type="radio" id="q3d" value="d" name="qc3"> Microsoft
</pre>
<br>
<hr>
Q 4 - Google Docs is a type of cloud computing.
<hr>
<pre>
a) <input type="radio" id="q4a" value="a" name="qc4" checked> True 
b) <input type="radio" id="q4b" value="b" name="qc4"> False
</pre>
<br>
<hr>
Q 5 - Which one of these is not a cloud computing pricing model?
<hr>
<pre>
a) <input type="radio" id="q5a" value="a" name="qc5"> Free 
b) <input type="radio" id="q5b" value="b" name="qc5"> Pay Per Use
c) <input type="radio" id="q5c" value="c" name="qc5"> Subscription
d) <input type="radio" id="q5d" value="d" name="qc5" checked> Ladder
</pre>
</b>
</div>
<hr>
<center><button onclick="logout()">Logout</button></center>
<hr>
</body>
</html>