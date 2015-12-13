<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assessment Summary</title>

<link rel="stylesheet" href="../../resources/core/css/calendar.css">
<link rel="stylesheet" href="../../resources/core/css/demo.css">
<link href="../../resources/core/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<%@include file="header.jsp" %>

	<div class="container">
		<div>
			<h3>Assessment</h3>
			<br />
		</div>
		<h4>Conduct Assessment</h4>
		<br />
		<spring:url value="/submit" var="assessmentActionUrl" />
		<form:form method="post" modelAttribute="assessmentForm"
			action="${assessmentActionUrl}">

			<table width="100%" border="1">
				<tr>
					<td colspan="2"><b>Sub-Factor / Item</b></td>
					<td colspan="6"><b>Block / Zone:</b></td>
					<td colspan="6"></td>
					<td colspan="6"><b>Floor:</b></td>
					<td colspan="6">Test Floor</td>
				</tr>
				<tr>
					<td colspan="2" rowspan="3">1.1 Grano / Terrazzo / Cement Sand Screed</td>
					<td colspan="12"><b>Location / Flat:</b></td>
					<td colspan="12">Test Location</td>
				</tr>
				<tr>
					<td colspan="6"><b>Spot: 1</b></td>
					<td colspan="6"><b>Spot: 2</b></td>
					<td colspan="6"><b>Spot: 3</b></td>
					<td colspan="6"><b>Spot: 4</b></td>
				</tr>
				<tr>
					<td align="center"><b>A</b></td>
					<td align="center"><b>B</b></td>
					<td align="center"><b>C</b></td>
					<td align="center"><b>D</b></td>
					<td align="center"><b>E</b></td>
					<td align="center"><b>N</b></td>
					<td align="center"><b>A</b></td>
					<td align="center"><b>B</b></td>
					<td align="center"><b>C</b></td>
					<td align="center"><b>D</b></td>
					<td align="center"><b>E</b></td>
					<td align="center"><b>N</b></td>
					<td align="center"><b>A</b></td>
					<td align="center"><b>B</b></td>
					<td align="center"><b>C</b></td>
					<td align="center"><b>D</b></td>
					<td align="center"><b>E</b></td>
					<td align="center"><b>N</b></td>
					<td align="center"><b>A</b></td>
					<td align="center"><b>B</b></td>
					<td align="center"><b>C</b></td>
					<td align="center"><b>D</b></td>
					<td align="center"><b>E</b></td>
					<td align="center"><b>N</b></td>
				</tr>
				<tr>
					<td>1.</td>
					<td>Soundness</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>2.</td>
					<td>Fall</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>3.</td>
					<td>Level</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>4.</td>
					<td>Evenness</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="10" rowspan="2"></td>
					<td colspan="6" rowspan="2" align="center"><b>Collected Sum:</b></td>
					<td colspan="2" align="center"><b>A</b></td>
					<td colspan="2" align="center"><b>B</b></td>
					<td colspan="2" align="center"><b>C</b></td>
					<td colspan="2" align="center"><b>D</b></td>
					<td colspan="2" align="center"><b>E</b></td>
				</tr>
				<tr>
					<td colspan="2" align="center">0</td>
					<td colspan="2" align="center">0</td>
					<td colspan="2" align="center">0</td>
					<td colspan="2" align="center">0</td>
					<td colspan="2" align="center">0</td>
				</tr>
			</table>
			<br/>
		</form:form>
	</div>

	<script>
		$(document).ready(function() {
			$(function() {
				$("#assessmentStartDate").datepicker({
					dateFormat : 'mm/dd/yy'
				});
				$("#assessmentEndDate").datepicker({
					dateFormat : 'mm/dd/yy'
				});
			});
		});
	</script>

</body>
</html>