<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Worklist</title>
<link href="resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/core/css/calendar.css">

</head>
<body>
	<%@include file="header.jsp"%>

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