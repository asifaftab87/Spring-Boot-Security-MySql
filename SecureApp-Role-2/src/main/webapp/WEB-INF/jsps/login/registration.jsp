
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link rel="stylesheet" type="text/css" href="/static/css/registration.css"/>

<div class="wrapper">
	<div id="formContent">
	
		<form:form autocomplete="off" action="registration" modelAttribute="user" method="post">
		
			<div class="form-group row" style="padding-top: 37px;">
				<form:errors path="firstName" class="validation-message" />
				<form:label path="firstName" class="col-sm-2 col-form-label"><spring:message code="first.name" /></form:label>
				<div class="col-sm-10">
					<spring:message code="first.name" var="firstName" />
					<form:input path="firstName" placeholder="${firstName}" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:errors path="lastName" class="validation-message" />
				<form:label path="lastName" class="col-sm-2 col-form-label"><spring:message code="user.lastName" /></form:label>
				<div class="col-sm-10">
					<form:input path="lastName" placeholder="Last Name" class="form-control" />
				</div>                  
			</div>
			<div class="form-group row">
				<form:errors path="email" class="validation-message" />
				<form:label path="email" class="col-sm-2 col-form-label"><spring:message code="user.email" /></form:label>
				<div class="col-sm-10">
					<form:input path="email" placeholder="Email" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:errors path="password" class="validation-message" />
				<form:label path="password" class="col-sm-2 col-form-label"><spring:message code="user.password" /></form:label>
				<div class="col-sm-10">
					<form:input type="password" path="password" placeholder="Password" class="form-control" />
				</div>                        
			</div>
			<spring:message code="register" var="register"/>
			<input type="submit" value="${register}" />
			
		</form:form>
	
	
	</div>
</div>



	