
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link rel="stylesheet" type="text/css" href="/static/css/login.css" />

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->


    <!-- Login Form -->
    <c:if test="${userExists}">
    	<p class="text-warning">
    		User Already exists, please login
    	</p>
    </c:if>
    <form action="forgotPassword" method="post">
      <input type="text" id="username" name="username" placeholder="Email" style="margin-top: 28px; margin-bottom: 32px;">
      <input type="submit" value="Submit" />
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="text-primary" href="/">Login</a>
      <br />
      <a class="text-primary" href="/registration">Sign Up</a>
    </div>

  </div>
</div>