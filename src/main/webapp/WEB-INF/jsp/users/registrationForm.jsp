<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>New User Registration</title>
		<meta name="viewport" content="initial-scale=1, maximum-scale=1">
		<link rel='stylesheet' href='<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css'>
	</head>
	<body>
		<form:form action="." modelAttribute="account">
			<h1>New User Registration</h1>
			<div>Username: <form:input path="username" /></div>
			<div>Password: <form:password path="password" /></div>
			<div>Confirm password: <form:password path="confirmPassword" /></div>
			<div>E-mail address: <form:input path="email" /></div>
			<div>First name: <form:input path="firstName" /></div>
			<div>Last name: <form:input path="lastName" /></div>
			
			<div><form:checkbox id="marketingOk" path="marketingOk" />
			
			Please send me product updates by e-mail.</div>
			<div><form:checkbox id="acceptTerms" path="acceptTerms" />
			
			I accept the <a href="#">terms of use</a>.</div>
			<div><input type="submit" value="Register" /></div>
			
		</form:form>
		<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/jquery/jquery-1.11.3.min.js"></script>
	</body>
</html>