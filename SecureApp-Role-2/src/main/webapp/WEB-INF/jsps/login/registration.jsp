<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
	<head>
		
	    <title>Registration Form</title>
	    <link rel="stylesheet" type="text/css" href="/css/registration.css"/>
	    <link rel="stylesheet" type="text/css" href="/css/login.css"/>
	    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
	    <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	</head>
	<body>
	
		<form:form action="/school" method="get">
		    <button class="btn btn-md btn-warning btn-block" type="Submit">Go To Login Page</button>
		</form:form>
	
		<div class="container">
		    <div class="row">
		        <div class="col-md-6 col-md-offset-3">
		            <form:form autocomplete="off" action="registration" modelAttribute="user" method="post" class="form-horizontal" role="form">
		                <h2>Registration Form</h2>
		               
		                <div class="form-group">
		                    <div class="col-sm-9">
		                        <form:errors path="name" class="validation-message" />
		                        <form:label path="name"><spring:message code="user.name" /></form:label>
		                        <form:input path="name" placeholder="Name" class="form-control" />
		                    </div>
		                </div>
		 
		                <div class="form-group">
		                    <div class="col-sm-9">
		                        <form:errors path="lastName" class="validation-message" />
		                        <form:label path="lastName"><spring:message code="user.lastName" /></form:label>
		                        <form:input path="lastName" placeholder="Last Name" class="form-control" />
		                    </div>
		                </div>
		                
		                <div class="form-group">
		                    <div class="col-sm-9">
		                        <form:errors path="email" class="validation-message" />
		                        <form:label path="email"><spring:message code="user.email" /></form:label>
		                        <form:input path="email" placeholder="Email" class="form-control" />
		                    </div>
		                </div>
		                <div class="form-group">
		                    <div class="col-sm-9">
		                        <form:errors path="password" class="validation-message" />
		                        <form:label path="password"><spring:message code="user.password" /></form:label>
		                        <form:input type="password" path="password" placeholder="Password" class="form-control" />
		                    </div>
		                </div>
	
		                <div class="form-group">
		                    <div class="col-sm-9">
		                        <button type="submit" class="btn btn-primary btn-block">Register User</button>
		                    </div>
		                </div>
		
		            </form:form>
		        </div>
		    </div>
		</div>
	
	</body>
</html>