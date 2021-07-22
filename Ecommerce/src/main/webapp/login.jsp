<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<%@ include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
<div class="container">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card mt-3">
<div class="card-header custom-bg text-white">
<h3>Login here</h3>
</div>
<div class="card-body">
<%@include file="components/message.jsp" %>
<form action="LoginServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email"  name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group mt-3 mb-3">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <a href="register.jsp" class="text-center d-block ">if not registered click here</a>
  	<div class="container text-center mt-3">
  	<button type="submit" class="btn btn-primary custom-bg border-0">Submit</button>
  	<button type="reset" class="btn btn-primary custom-bg border-0">Reset</button>
	</div>
</form>
</div>

</div>
</div>
</div>


</div>
</body>
</html>