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

<!-- <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script> -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">


</head>
<body>
	<div class="banner">
		<div class="banner_logo_left"></div>
		<div class="banner_logo_right"></div>
	</div>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<div class="menu">
			<div class="menu_items">
				<div class="menu_container_left">
					<ul>
						<li><a href="/HKPassDemo/">Work List</a></li>
						<li>|</li>
						<li><a href="#">Cases</a></li>
						<li>|</li>
						<li><a href="/HKPassDemo/reports">Reports</a></li>
						<li>|</li>
						<li><a href="#">Admin</a></li>
					</ul>
				</div>
				<div class="menu_container_right">
					<ul>
						<li>${pageContext.request.userPrincipal.name}</li>
						<li>|</li>
						<li><a href="<c:url value="/logout" />" >Logout</a></li>
					</ul>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>