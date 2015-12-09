<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Approvals</title>
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
</head>
<body>
	<div><h2>Welcome : ${pageContext.request.userPrincipal.name}
           | <a href="<c:url value="/logout" />" > Logout</a></h2></div>


	<div class="container">

		<h1>Approvals</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#ID</th>
					<th>Status</th>
					<th>Created Date</th>
					<th>Created By</th>
				</tr>
			</thead>
			<c:forEach var="approvalList" items="${approvalList}">
				<tr>
				<spring:url value="/approvals/${approvalList.id}/details" var="showUrl"/>
					<td>
					<a href="${showUrl}">PASS-${approvalList.id}</a>
					</td>
					<td>${approvalList.status}</td>
					<td>${approvalList.createdDate}</td>
					<td>${approvalList.createdBy}</td>
				</tr>
			</c:forEach>



		</table>

	</div>

</body>
</html>