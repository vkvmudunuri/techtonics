<%@page import="databaseLogic.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete TechTalk</title>





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
	background-color: light-grey;
}

.login {
	width: 400px;
	height: 400px;
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
	margin-top: 10%;
}

.login form input[type=text], .login form input[type=password] {
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

.login form input[type=text] {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
	border-top: #0b0b0b solid 1px;
	background: #141414 10px center no-repeat;
}

.login form input[type=password] {
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
	border-top: #0b0b0b 1px solid;
	border-bottom: #353535 1px solid;
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
	float: center;
}

.login .regpass .col a {
	color: #fff;
	text-decoration: none;
	font: 15px Arial;
	text-align: left;
}
</style>



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
				href="index.jsp"><img src="Resources/images/logo.jpg" alt=""
					href="#" /></a></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Contact</a></li>

				<li>

					<form action="Logout">
						<input type="submit" value="LOG OUT">
					</form>

				</li>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
<br><br>
	<form action="Admin.jsp">
		<div>
			<input type="submit" value="Go back 2 home page" class="btn btn-primary">
		</div>
	</form>

	<b><font face="Times New Roman"><h3>Give details to
				delete any TechTalk:</h3></font> </b>




	<form action="deleteTechTalk" method="post">

		<div class="form-group">
			<label>Title: </label> <input type="text" name="mytitleForDelete"
				required class="form-control">
		</div>

		<input type="submit" value="Delete it.." class="btn btn-primary">

	</form>

	<br>
	<br>

	<%-- <form action="#">
		<%
		Connection con=MyConnection.getdbConnection();
	
	try
	{
	String sql = "select * from techtalks";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery(); 
	%>
		<p>
			Select Title : <select>
				<%
	while(rs.next())
	{
	String title = rs.getString("title"); 
	%>
				<option value="<%=title %>"><%=title %></option>
				<%
}
%>
			</select>
		</p> --%>





























		<br> <br>


		<form action="Admin.jsp">
			<div>
				<input type="submit" value="Go back 2 home page"
					class="btn btn-primary">
			</div>
		</form>

		<br> <br>
		<%-- 
	<h2>Available techtalks......</h2>
	<br>

	<%
		ArrayList techtalkList = (ArrayList) request.getAttribute("tecktalkList");

		Iterator iter = techtalkList.iterator();
		ArrayList<Object> listOfId = new ArrayList<Object>();

		for (int i = 0; i < techtalkList.size(); i = i + 3) {
			listOfId.add(techtalkList.get(i));
		}

		pageContext.setAttribute("list", techtalkList);
		int count = 1;
	%>
	<br>
	<br>
	<table style="margin-left: 80px; margin-right: 30px">
		<tr>
			<th style="font-size: xx-large; width: 2%"><font
				face="Comic sans MS">S.No.</font></th>
			<th style="font-size: xx-large; width: 2%"><font
				face="Comic sans MS">Date </font></th>
			<th style="font-size: xx-large; width: 20%"><font
				face="Comic sans MS">TechTalk Title</font></th>
			<th style="font-size: xx-large; width: 10%"><font
				face="Comic sans MS">TechTalk Description </font></th>
			<th style="font-size: xx-large; width: 15%"><font
				face="Comic sans MS">Person </font></th>

		</tr>
		<c:forEach items="${list}" var="current">
			<tr>
				<td style="font-size: x-large; width: 12%"><%=count++%>.</td>

				<td style="font-size: x-large; width: 12%"><c:out
						value="${current.techtalk_date}" /></td>

				<td style="font-size: x-large; width: 12%"><c:out
						value="${current.techtalk_title}" /></td>

				<td style="font-size: x-large; width: 12%"><c:out
						value="${current.techtalk_description}" /></td>

				<td style="font-size: x-large;"><c:out
						value="${current.techtalk_speaker}" /></td>

				
				<td style="font-size: x-large;"><c:out
						value="${current.story_title}" /></td>
				
				<td style="font-size: x-large;"><a
					href="Description.jsp?empId=${current.emp_id}&storyTitle=${current.story_title}">Details</a>
				</td>


			</tr>
		</c:forEach> --%>

		</table>
</body>
</html>