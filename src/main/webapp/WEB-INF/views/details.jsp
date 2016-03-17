<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Work Details</title>
<link href="../../resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../../resources/core/css/calendar.css">
</head>
<body>

	<%@include file="header.jsp" %>
		<div class="container">
			<h2>Conduct Assessment</h2>
			<br />

			<table width="100%" border="1">
				<form:hidden path="id" />
				<tr>
					<spring:bind path="project">
						<td><label>Project :</label></td>
						<td colspan="2"><form:input path="project" type="text" size="56"/></td>
					</spring:bind>
				</tr>
				<tr>
					<spring:bind path="subContractor">
						<td><label>Sub-Contractor :</label></td>
						<td colspan="2"><form:input path="subContractor" type="text" size="56"/></td>
					</spring:bind>
				</tr>
				<tr>
					<spring:bind path="contractNumber">
						<td><label>Contract Number :</label></td>
						<td colspan="2"><form:input path="contractNumber" type="text" size="56"/></td>
					</spring:bind>
				</tr>
				<tr>
					<td><label>Assessment Period :</label></td>
					<td><form:input path="assessmentStartDate" id="assessmentStartDate" size="25"/></td>
					<td><form:input path="assessmentEndDate" id="assessmentEndDate" size="25"/></td>
					<input type="hidden" id="hiddenField" value=""/>
				</tr>
			</table>

		</div>

</body>
</html>