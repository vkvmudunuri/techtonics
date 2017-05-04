<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Tech Talks</title>


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
			<a class="navbar-brand" href="index.jsp"><img
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
	<br><br>
	
	<form action="Admin.jsp">
		<div>
			<input type="submit" value="Go back 2 home page" class="btn btn-primary">
		</div>
	</form>


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

				<%-- 
				<td style="font-size: x-large;"><c:out
						value="${current.story_title}" /></td>
				
				<td style="font-size: x-large;"><a
					href="Description.jsp?empId=${current.emp_id}&storyTitle=${current.story_title}">Details</a>
				</td> --%>


			</tr>
		</c:forEach>

	</table>
	
	


</body>
</html>