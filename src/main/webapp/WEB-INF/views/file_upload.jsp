<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload</title>
<link href="../../../resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../../../resources/core/css/demo.css">

</head>
<body>
	<%@include file="header.jsp"%>

	<div class="container">
		<h3>File Upload</h3>
		<spring:url value="/upload" var="uploadUrl" />
		<form:form method="post" modelAttribute="fileBucket" enctype="multipart/form-data" action="${uploadUrl}?${_csrf.parameterName}=${_csrf.token}">
			<form:hidden path="assessmentId"/>
			<div class="row">
                <div class="form-group col-md-12">
                    <div class="col-md-7">
                        <form:input type="file" path="file" id="file" class="form-control input-sm"/>
                    </div>
                </div>
            </div>
            <div class="buttons" align="center">
                <div class="buttons">
                    <input type="submit" value="Upload" class="button button-stable">
                </div>
            </div>
		</form:form>
	</div>

</body>
</html>