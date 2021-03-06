<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<title> About </title>
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
                <a class="navbar-brand" href="/GroupleaseProject/">Grouplease</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/GroupleaseProject/about">About</a>
                    </li>
                    <li>
                        <a href="/GroupleaseProject/interestCalculation">Services</a>
                    </li>
                    <li>
                        <a href="/GroupleaseProject/contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
		<div class="container">
			<!-- Content -->
			<header class="jumbotron hero-spacer">
      	<h2>Contact information</h2>
      	
        <div>			Author: Peeranut Ngaorungsri (Nut) 
        	<br/> Contact Email: nutteen@gmail.com
        </div>
      </header>
				
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