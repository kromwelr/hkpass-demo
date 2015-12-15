<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Uploader</title>
<link href="resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/core/css/demo.css">

</head>
<body>
	<%@include file="header.jsp"%>

	<div class="container">
		<h3>File Upload Success</h3>
	 	<div class="success">
	        File  <strong>${fileName}</strong> uploaded successfully.
	        <br/><br/>
	        <spring:url value="/worklist/${id}/form" var="backUrl"/>
		   	<button type="button" class="button button-stable" onclick="location.href='${backUrl}'">Back</button>
	    </div>
	</div>

</body>
</html>