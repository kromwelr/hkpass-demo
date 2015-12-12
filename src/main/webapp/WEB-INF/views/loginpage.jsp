<%@page session="true"%>
<html>
<head>
<title>HKHA Pass</title>
<link href="resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/core/css/calendar.css">

</head>
<body onload='document.loginForm.username.focus();'>

	<%@include file="header.jsp" %>
	<div id="login-box" align="center">
		<div class="main_logo"></div>
		<!-- <h2><img src="resources/images/main_logo.png"/></h2> -->

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm'
		  action="login" method="POST">

		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='username'></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
				  value="Sign-in" /></td>
			</tr>
		  </table>

		  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

		</form>
	</div>
	<div class="footer"></div>
</body>
</html>