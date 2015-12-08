<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>HKPass Demo</h1>
        <p>This will be the LOGIN page!</p>
        
        <spring:url value="/worklist" var="worklist"/>
        <spring:url value="/approvals" var="approvals"/>
        
        <button onclick="location.href='${worklist}'">Login as Assessor</button>
        <button onclick="location.href='${approvals}'">Login as Approver</button>
        
    </body>
</html>
