<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link href="Resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom CSS -->
<link href="Resources/css/index.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="Resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!--============styling for signup Page=================================================-->


</head>
<body>



	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- For responsive display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
			</button>
			<a class="navbar-brand" href="index.jsp"> <img
				src="Resources/images/logo.jpg" alt="" /></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">ABOUT</a></li>
				<li><a href="#">VIDEOS</a></li>
				<li><a href="#">TOAST MASTERS</a></li>
				<li>

					<form action="Logout">
						<input type="submit" value="LOG OUT">
					</form>

				</li>

			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!--=============login page====================-->


	<font face="Bedrock"><h2>Login Success.....</h2></font>

	<font face="WildWest"><h3>Your details:</h3></font>

	<b><font face="Times New Roman"><h3>Email:</h3></font> </b>




	<font color="blue" face="Comic sans MS" size="5"><h4>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<%=session.getAttribute("username")%></h4></font>
	<br />






	<div class="container">

		<form action="allTechTalks" method="get">
			<input type="submit" class="btn btn-primary" value="All TechTalks">
		</form>
		<br>



	</div>

</body>
</html>