<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>User Registration</title>
		<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel='stylesheet' href='<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css'>
	</head>
	<body>
		<div class="container">
			<h2>User Registration</h2>
			<form:form action="." modelAttribute="account">
			
				<div class="form-group">
					<label for="username">Username:</label>
					<form:input type="text" class="form-control" id="username" placeholder="Enter username" path="username"/>
				</div>
				
				<div class="form-group">
					<label for="password">Password:</label>
					<form:input type="password" class="form-control" id="password" placeholder="Password" path="password"/>
				</div>
				
				<div class="form-group">
					<label for="confirmPassword">Confirm password:</label>
					<form:input type="password" class="form-control" id="confirmPassword" placeholder="Password" path="confirmPassword"/>
				</div>
				
				<div class="form-group">
					<label for="email">E-mail address:</label>
					<form:input type="email" class="form-control" id="email" placeholder="Email" path="email"/>
				</div>
				
				<div class="form-group">
					<label for="firstName">First name:</label>
					<form:input type="text" class="form-control" id="firstName" placeholder="Enter first name" path="firstName"/>
				</div>
				
				<div class="form-group">
					<label for="lastName">Last name:</label>
					<form:input type="text" class="form-control" id="lastName" placeholder="Enter last name" path="lastName"/>
				</div>
	
				<div class="checkbox">
					<label><form:checkbox id="marketingOk" path="marketingOk"/>Please send me product updates by e-mail.</label>
				</div>
				
				<div class="checkbox">
					<label><form:checkbox id="acceptTerms" path="acceptTerms"/>I accept the <a href="#">terms of use</a>.</label>
				</div>
				
				<div style="text-align: center"><input type="submit" class="btn btn-primary"  value="Register" /></div>
				
			</form:form>
			<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="<%=request.getContextPath() %>/jquery/jquery-1.11.3.min.js"></script>
		</div>
	</body>
</html>