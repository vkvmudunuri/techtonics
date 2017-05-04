<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="Resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="Resources/css/index.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="Resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!--============styling for signup Page=================================================-->


<style>
body {
	background-color: lightgrey;
}

.login {
	width: 400px;
	height: 540px;
	overflow: hidden;
	background: #1e1e1e;
	border-radius: 6px;
	margin: 50px auto;
	box-shadow: 0px 0px 50px rgba(0, 0, 0, .8);
}

.login .outerblock {
	width: 398px;
	height: 55px;
	padding-top: 0px;
	padding-bottom: 5px;
	font-size: 14px;
	text-align: center;
	color: #bfbfbf;
	font-weight: bold;
	background: #121212;
	border: #2d2d2d solid 1px;
	margin-bottom: 30px;
	border-top-right-radius: 6px;
	border-top-left-radius: 6px;
	font-family: Arial;
}

.login form {
	width: 240px;
	height: auto;
	overflow: hidden;
	margin-left: auto;
	margin-right: auto;
}

.login form input[type=text], .login form input[type=password], .login form input[type=email],
	.login form input[type=tel] {
	width: 300px;
	font-size: 12px;
	padding-top: 14px;
	padding-bottom: 14px;
	padding-left: 40px;
	border: none;
	color: #bfbfbf;
	background: #141414;
	outline: none;
	margin: 10px;
}

.login form input[type=text], .login form input[type=password], .login form input[type=email],
	.login form input[type=tel] {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
	border-top: #0b0b0b solid 1px;
	background: #141414 10px center no-repeat;
}

.login form .submitbutton {
	width: 240px;
	height: 45px;
	display: block;
	padding-top: 14px;
	padding-bottom: 14px;
	border-radius: 6px;
	border: none;
	background: #60BE05;
	text-align: center;
	text-decoration: none;
	font-size: 14px;
	font-weight: bold;
	color: #141414;
	font-family: Arial;
}

.login .regpass {
	width: 240px;
	height: auto;
	overflow: hidden;
	padding-top: 25px;
	padding-bottom: 25px;
	font-size: 10px;
	text-align: center;
}

.login .regpass .col {
	width: 100%;
	height: auto;
	float: right;
}

.login .regpass .col a {
	color: #fff;
	text-decoration: none;
	font: 15px Arial;
	text-align: left;
}
</style>
<!--========end of styling============================-->


</head>
<body>




	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><a class="navbar-brand"
				href="index.jsp"><img src="Resources/images/logo.jpg" alt="" /></a></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="Login.jsp">Log in</a></li>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>



	<img id="image" src="Resources/images/image11.jpg" height="200"
		width="200" align="middle">

	<section class="login">
	<div class="outerblock">
		<%
			if (session.getAttribute("msgAfterTwiceSignup") != null) {
		%>
		<font face="Comic sans MS">
			<h4><%=session.getAttribute("msgAfterTwiceSignup")%></h4>
		</font>
		<%
			}
		%>
		<h2>User Registration</h2>
	</div>
	<form action="signupservlet" method="post">

		<input type="email" name="user_email" required
			title="Email required in abc@atmecs.com format"
			placeholder="Email Address" data-icon="U"
			pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@atmecs.com">

		<!--pattern="/^[a-z0-9._%+-]+@atmecs.com/"  -->


		<input type="text" name="user_name" required title="Username required"
			placeholder="Your Good Name" data-icon="U"> <input
			type="password" name="user_pswrd" required
			title="Minimum 8 characters at least 1 Alphabet and 1 Number"
			placeholder="Password" data-icon="U"
			pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$">

		</div>
		<input type="submit" value="Register" class="submitbutton"
			data-icon="user">


	</form>
	</section>





</body>
</html>