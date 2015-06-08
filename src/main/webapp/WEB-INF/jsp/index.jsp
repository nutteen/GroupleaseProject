<%@ page import="java.util.List"%>
<%@ page import="th.co.grouplease.Account"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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
    
    <!-- Body -->
    <div class="container">
    
    	<h4>Accounts</h4>
    	<!-- Table to show all accounts -->
    	<table class="table table-striped">
    		<!-- Table header -->
    		<thead>
    			<tr>
    				<th>Id</th>
    				<th>Username</th>
    				<th>Name</th>
    				<th>Email</th>
    				<th>Joined date</th>
    			</tr>
    		</thead>
    		
    		<!-- Table body -->
    		<tbody>
    			
    			<% 
						@SuppressWarnings("unchecked")
						List<Account> accounts = (List<Account>)request.getAttribute("accounts"); 
						for(Account account : accounts){
					%>
					
						<tr>
							<td><%= account.getId() %></td>
							<td><%= account.getUsername() %></td>
							<td><%= account.getFullName() %></td>
							<td><%= account.getEmail() %></td>
							<td><%= account.getDateCreated() %></td>
						</tr>
						
					<%
						}
					%>
    		</tbody>
    	</table>
    	
    	<!-- Filter inputs -->
    	<h4>Filter</h4>
    	
    	<form:form action="filter" modelAttribute="filter">
    	
    		<div class="form-group">
					<label for="id"> Id: </label>
					<form:input type="text" class="form-control" placeholder="Enter id filter" path="id"/>
				</div>
				
				<div class="form-group">
					<label for="username"> Username: </label>
					<form:input type="text" class="form-control" placeholder="Enter username filter" path="username"/>
				</div>
				
				<div class="form-group">
					<label for="name"> Name: </label>
					<form:input type="text" class="form-control" placeholder="Enter name filter" path="name"/>
				</div>
				
				<div class="form-group">
					<label for="email"> Email: </label>
					<form:input type="text" class="form-control" placeholder="Enter email filter" path="email"/>
				</div>
				
				<div style="text-align: center"><input type="submit" class="btn btn-primary" value="Filter"/></div>
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