<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<title> Term charges calculation</title>
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
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="/GroupleaseProject/interestCalculation">Services</a>
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
			<!-- Content -->
			<div class="panel panel-default">
			  <div class="panel-heading">Hire Purchase Term charges calculator</div>
			  <div class="panel-body">
			  
					<div class="form-group">
			  		<label for="financedAmount">Financed amount:</label>
			  		<input type="text" class="form-control" id="financedAmount">
					</div>
	
					<div class="form-group">
			  		<label for="termCharges">Term charges (Interest rate) per annum:</label>
			  		<input type="text" class="form-control" id="termCharges">
					</div>
	
					<div class="form-group">
			  		<label for="period">Tenure (Repayment period):</label>
			  		<input type="text" class="form-control" id="period">
					</div>
	
					<div class="form-group">
			  		<label for="interest">Interest charge:</label>
			  		<input type="text" class="form-control" id="interest" readonly>
					</div>
					
					<div class="form-group">
			  		<label for="annualPayRate">Annual % rate:</label>
			  		<input type="text" class="form-control" id="annualPayRate" readonly>
					</div>
					
					<div class="form-group">
			  		<label for="monthlyInstalment">Monthly instalment:</label>
			  		<input type="text" class="form-control" id="monthlyInstalment" readonly>
					</div>
	
					<div class="form-group">
			  		<label for="rebateDuration">Rebate duration:</label>
			  		<input type="text" class="form-control" id="rebateDuration">
					</div>
					
					<div class="form-group">
			  		<label for="rebateAmount">Rebate amount:</label>
			  		<input type="text" class="form-control" id="rebateAmount" readonly>
					</div>
	
				</div>
			</div>
			
			
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