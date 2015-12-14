<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PROF Worklist</title>
<link href="../resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../resources/core/css/demo.css">
</head>
<body>
	<%@include file="header.jsp" %>
	<div class="container">

		<h1>Worklist</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#ID</th>
					<th>Project</th>
					<th>Status</th>
					<th>Created Date</th>
					<th>Created By</th>
					<th>Assigned To</th>
				</tr>
			</thead>
			<c:forEach var="reviewList" items="${reviewList}">
				<tr>
				<spring:url value="/prof/worklist/${reviewList.id}/details" var="showUrl"/>
					<td>
					<a href="${showUrl}">PASS-${reviewList.id}</a>
					</td>
					<td>${reviewList.contract}</td>
					<td>${reviewList.status}</td>
					<td>${reviewList.createdDate}</td>
					<td>${reviewList.createdBy}</td>
					<td>${reviewList.assignedTo}</td>
				</tr>
			</c:forEach>



		</table>

	</div>

</body>
</html>