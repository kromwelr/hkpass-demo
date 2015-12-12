<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Worklist</title>
<link href="resources/core/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<div class="banner">
		<div class="banner_logo_left"></div>
		<div class="banner_logo_right"></div>
	</div>

	<div class="menu">
		<div class="menu_items">
			<div class="menu_container_left">
				<ul>
					<li><a href="#">Work List</a></li>
					<li>|</li>
					<li><a href="#">Cases</a></li>
					<li>|</li>
					<li><a href="#">Calendar</a></li>
					<li>|</li>
					<li><a href="#">Reports</a></li>
					<li>|</li>
					<li><a href="#">Admin</a></li>
				</ul>
			</div>
			<div class="menu_container_right">
				<ul>
					<li>${pageContext.request.userPrincipal.name}</li>
					<li>|</li>
					<li><a href="<c:url value="/logout" />" >Logout</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">

		<h1>Worklist</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#ID</th>
					<th>Contract</th>
					<th>Status</th>
					<th>Created Date</th>
					<th>Created By</th>
					<th>Assigned To</th>
				</tr>
			</thead>
			<c:forEach var="worklist" items="${worklist}">
				<tr>
				<spring:url value="/worklist/${worklist.id}/form" var="showUrl"/>
					<td>
					<a href="${showUrl}">PASS-${worklist.id}</a>
					</td>
					<td>${worklist.contract}</td>
					<td>${worklist.status}</td>
					<td>${worklist.createdDate}</td>
					<td>${worklist.createdBy}</td>
					<td>${worklist.assignedTo}</td>
				</tr>
			</c:forEach>



		</table>

	</div>

</body>
</html>