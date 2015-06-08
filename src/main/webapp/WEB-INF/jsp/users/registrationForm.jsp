<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:message var="pageTitle" code="newUserRegistration.pageTitle" />
<spring:message var="msgAllFieldsRequired" code="newUserRegistration.message.allFieldsRequired" />
<spring:message var="register" code="newUserRegistration.label.register"/>
<html>
	<head>
		<title>${pageTitle}</title>
		<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel='stylesheet' href='<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css'>
		<link rel='stylesheet' href='<%=request.getContextPath() %>/css/heroic-features.css'>
	</head>
	<body>
		
		<!-- Top navigation -->
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
                <a class="navbar-brand" href="/GroupleaseProject/">Grouplease</a>
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
			<h2>${pageTitle}</h2>
			<div>${msgAllFieldsRequired}</div>
			<form:form action="." modelAttribute="account">
			
				<form:errors path="*">
					<div><p><spring:message code="error.global"/></p></div>
				</form:errors>
				
				<div class="form-group">
					<label for="username"> <spring:message code="newUserRegistration.label.username"/> </label>
					<form:input type="text" class="form-control" id="username" placeholder="Enter username" path="username"/>
					<form:errors path="username" htmlEscape="false" />	
				</div>
				
				<div class="form-group">
					<label for="password"> <spring:message code="newUserRegistration.label.password"/> </label>
					<form:input type="password" class="form-control" id="password" placeholder="Password" path="password"/>
					<form:errors path="password" htmlEscape="false" />	
				</div>
				
				<div class="form-group">
					<label for="confirmPassword"> <spring:message code="newUserRegistration.label.confirmPassword"/> </label>
					<form:input type="password" class="form-control" id="confirmPassword" placeholder="Password" path="confirmPassword"/>
					<form:errors path="confirmPassword" htmlEscape="false" />	
				</div>
				
				<div class="form-group">
					<label for="email"> <spring:message code="newUserRegistration.label.email"/> </label>
					<form:input type="email" class="form-control" id="email" placeholder="Email" path="email"/>
					<form:errors path="email" htmlEscape="false" />	
				</div>
				
				<div class="form-group">
					<label for="firstName"> <spring:message code="newUserRegistration.label.firstName"/> </label>
					<form:input type="text" class="form-control" id="firstName" placeholder="Enter first name" path="firstName"/>
				</div>
				
				<div class="form-group">
					<label for="lastName"> <spring:message code="newUserRegistration.label.lastName"/> </label>
					<form:input type="text" class="form-control" id="lastName" placeholder="Enter last name" path="lastName"/>
				</div>
	
				<div class="checkbox">
					<label><form:checkbox id="marketingOk" path="marketingOk"/> <spring:message code="newUserRegistration.label.marketingOk"/> </label>
				</div>
				
				<div class="checkbox">
					<label><form:checkbox id="acceptTerms" path="acceptTerms"/> <spring:message code="newUserRegistration.label.acceptTerms"/> </label>
					<form:errors path="acceptTerms" htmlEscape="false" />	
				</div>
				
				<div style="text-align: center"><input type="submit" class="btn btn-primary" value="${register}"/></div>
				
			</form:form>

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
		
		<script type="text/javascript" src="<%=request.getContextPath() %>/jquery/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>