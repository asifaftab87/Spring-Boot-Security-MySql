<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

	<%-- 
	<div class="container">
		<form action="registration" method="get">
		    <button class="btn btn-md btn-warning btn-block" type="Submit">Go To Registration Page</button>
		</form>
		
		    <h3 class="form-signin-heading">Welcome</h3>
			<br/>
		    <form:form action="login" method="post" modelAttribute="user">
				
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
		 		
		 		
		    </form:form>
		</div>
		
	<div id="wrap">	
	  <div class="sidenav">
         <div class="login-main-text">
            <h2><spring:message code="application" /><br> <spring:message code="login.page" /></h2>
            <p><spring:message code="login.register.from.here" /></p>
         </div>
      </div>
      
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
              <form:form action="login" method="post" modelAttribute="user">
                  <div class="form-group">
                     <label><spring:message code="user.email" /></label>
                     <spring:message code="user.email" var="userEmail"/>
                     <form:input path="email" placeholder="${userEmail}" class="form-control" />
                  </div>
                  <div class="form-group">
                     <label><spring:message code="user.pw" /></label>
                     <spring:message code="user.pw" var="userPwd"/>
                     <form:input path="password" placeholder="${userPwd}" class="form-control" type="password" />
                  </div>
                  <button type="submit" class="btn btn-black"><spring:message code="login" /></button>
                  <button type="button" class="btn btn-secondary"><spring:message code="register" /></button>
               </form:form>
              
               <form action="login" method="post">
                  <input name="username" />
                  <input name="password" />
                  <button type="submit" class="btn btn-black"><spring:message code="login" /></button>
                  <button type="button" class="btn btn-secondary"><spring:message code="register" /></button>
                  
                  
               </form>
            </div>
         </div>
      </div>
 </div>
 
  --%>
 <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="/static/images/user.png" class="user-custon-icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form action="login" method="post">
      <input type="text" id="username" class="fadeIn second" name="username" placeholder="Email">
      <input type="password" id="password" class="fadeIn third" name="password" placeholder="Password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>