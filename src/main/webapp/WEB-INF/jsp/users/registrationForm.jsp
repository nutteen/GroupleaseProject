<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<title>User Registration</title>
		<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel='stylesheet' href='<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css'>
		<link rel='stylesheet' href='<%=request.getContextPath() %>/css/heroic-features.css'>
	</head>
	<body>
		
		<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Grouplease</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
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
		
			<hr>
			
			<!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Grouplease 2015</p>
                </div>
            </div>
        </footer>
		</div>
		
		</div>
	</body>
</html>