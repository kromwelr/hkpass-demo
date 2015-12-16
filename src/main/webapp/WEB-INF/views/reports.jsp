<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports</title>
<link href="resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/core/css/calendar.css">
<script language="javascript">

function onClick(){
	var reportType= window.document.reportForm.reportType.value;
	var reportURL = "resources/images/reports/";
	if(reportType=='adhoc'){
		reportURL = reportURL + "sample_report.png";
	}else if(reportType=='score'){
		reportURL = reportURL + "quarterly-score-report.png";
	}else if(reportType=='summary'){
		reportURL = reportURL + "performance-report-1.png";
	}
	var opts = "title=No, directories=no,height=700px, location=no, menubar=no, resizable=no, scrollbars=no,toolbar=no,width=1000px";
	window.open(reportURL,"_blank",opts);
}
</script>
</head>
<body>
	<%@include file="header.jsp"%>

	<div class="container">

		<h1>Reports</h1>
		<form name="reportForm">
			<div>Select type of Report:
				<select id="reportType" >
					<option value="adhoc">Ad-hoc Report</option>
					<option value="score">Project Score</option>
					<option value="summary">Summary Report</option>
				</select>
			</div>
			<div>
				Report date:
				<input path="assessmentDate" cssClass="form-control" value="12/19/2015"/>
			</div>
			<br>
			<div>
				<button type="button" class="button button-stable" onclick='javascript:onClick();'">Submit</button>
			</div>
		</form>
	</div>

</body>
</html>