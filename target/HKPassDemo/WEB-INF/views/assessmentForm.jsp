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
<title>Work Details</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/resources/core/css/calendar.css">

</head>
<body>
	<div>
		<h1>Assessment (PASS-${assessmentForm.id})</h1>
		<br />
	</div>
	<div>
		<h2>Conduct Assessment</h2>
		<br />
		<spring:url value="/submit" var="assessmentActionUrl" />
		<form:form method="post" modelAttribute="assessmentForm"
			action="${assessmentActionUrl}">
			<div>
				<table width="100%">
					<form:hidden path="id" />
					<form:hidden path="createdDate" />
					<form:hidden path="createdBy" />
					<tr>
						<spring:bind path="project">
							<td><label>Project :</label></td>
							<td colspan="2"><form:input path="project" type="text" size="65"/></td>
						</spring:bind>
					</tr>
					<tr>
						<spring:bind path="subContractor">
							<td><label>Sub-Contractor :</label></td>
							<td colspan="2"><form:input path="subContractor" type="text" size="65"/></td>
						</spring:bind>
					</tr>
					<tr>
						<spring:bind path="contractNumber">
							<td><label>Contract Number :</label></td>
							<td colspan="2"><form:input path="contractNumber" type="text" size="65"/></td>
						</spring:bind>
					</tr>
					<tr>
						<td><label>Assessment Period :</label></td>
						<td>
							<form:input path="assessmentStartDate" id="assessmentStartDate" size="30"/>
							<form:input path="assessmentEndDate" id="assessmentEndDate" size="30"/>
						</td>
					</tr>
				</table>
			</div>
			<div>
				<br/>
				<table width="100%">
					<thead>
						<tr>
							<td>
								<b>Sub-factor</b>
							</td>
							<td>
								<b>Item</b>
							</td>
							<td align="center">
								<b>Grading</b>
							</td>
						</tr>
						<tr>
							<td/>
							<td/>
							<td>
								<table width="100%">
									<tr>
										<td align="center"><b>A</b></td>
										<td align="center"><b>B</b></td>
										<td align="center"><b>C</b></td>
										<td align="center"><b>D</b></td>
										<td align="center"><b>N</b></td>
									</tr>
								</table>
							</td>
						</tr>
					</thead>
					<tr>
						<td>1.1 Management Structure (#)</td>
						<td>1.1.1 Organization Chart</td>
						<td>
							<form:radiobuttons path="score1" items="${scoreList}" element="label class='radio-inline'" />
						</td>
					</tr>
					<tr>
						<td>1.2 Sub-Contractor's</td>
						<td>1.2.1 Listing of sub-contractors under the VSRS</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score2" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>1.3 Supervising Engineer</td>
						<td>1.3.1 Availability</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score3" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td/>
						<td>1.3.2 Performance of Supervising Engineer</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score4" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td/>
						<td>1.3.3 Adequacy of Authority</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score5" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>1.4 Site Supervisor</td>
						<td>1.4.1 Availability</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score6" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td/>
						<td>1.4.2 Performance of Site Supervisor</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score7" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td/>
						<td>1.4.3 Adequacy of Authority</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score8" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>1.5 Registered Lift/Escalator Engineer</td>
						<td>1.5.1 Adequacy of RLE/REE</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score9" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td/>
						<td>1.5.2 Adequacy of Authority</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score10" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>1.6 Labour</td>
						<td>1.6.1 Forecast</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score11" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td/>
						<td>1.6.2 Adequacy and Quality</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score12" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>1.7 Equipment/Instrument</td>
						<td>1.7.1 Adequacy and Quality</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score13" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>1.8 Materials</td>
						<td>1.8.1 Forecast and Planning</td>
						<td>
							<table width="100%">
								<tr>
									<form:radiobuttons path="score14" items="${scoreList}" element="label class='radio-inline'" />
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			
			<div align="right">
				<br/>
				<spring:url value="/worklist" var="worklist"/>
				<button type="button" onclick="location.href='${worklist}'">Back</button>
				<button type="submit">Submit</button>
			</div>
			
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