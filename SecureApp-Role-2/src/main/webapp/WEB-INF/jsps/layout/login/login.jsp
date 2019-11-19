<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>

	<head>
	    <title>Spring Security Tutorial</title>
	    <link rel="stylesheet" type="text/css" href="/static/css/login.css"/>
	    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
	    <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		
	</head>
	
	<body>
		<form action="registration" method="get">
		    <button class="btn btn-md btn-warning btn-block" type="Submit">Go To Registration Page</button>
		</form>
		
		   <%-- <img src="/images/login.jpg" class="img-responsive center-block" width="300" height="300" alt="Logo"/>   --%>
		    
		    <h3 class="form-signin-heading">Welcome</h3>
			<br/>
		    <form:form action="login" method="post" modelAttribute="user">
				<div class="container">
				<form:label path="email"><spring:message code="user.email" /></form:label>
                <form:input path="email" placeholder="Email" class="form-control" />
                <br />
                <form:label path="password"><spring:message code="user.password" /></form:label>
                <form:input path="password" placeholder="Name" class="form-control" type="password" />
                
                <c:if test="${loginSuccess}">  
			        <div align="center">
			        	<p style="font-size: 20; color: #FF1C19;">Email or Password invalid, please verify</p>
			        </div>
			    </c:if>
		        <button class="btn btn-lg btn-primary btn-block" name="Submit" type="Submit">Login</button>
		 		
		 		</div>
		    </form:form>
		
	</body>
</html>