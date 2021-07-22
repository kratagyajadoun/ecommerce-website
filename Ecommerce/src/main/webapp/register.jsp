<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User</title>
<%@ include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
	<div class="container-fluid">
	<div class="row mt-5">

		<div class="col-md-4 offset-md-4">
			<div class="card">
			<%@include file="components/message.jsp" %>
			<div class="card-body px-5">
				<h3 class="text-center my-3">Sign up here</h3>
			<form action="RegisterServlet" method="post">
				<div class="mb-3">
					<label for="name" class="form-label">User Name</label>
					 <input type="text" class="form-control" name="user_name"
						id="name" placeholder="Enter here" aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
					<label for="email" class="form-label">User Email</label>
					 <input type="email"  name="user_email" class="form-control"
						id="email" placeholder="Enter here" aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
					<label for="password" class="form-label">User Password</label>
					 <input type="password" class="form-control" name="user_password"
						id="password" placeholder="Enter here" aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
					<label for="phone" class="form-label">User Phone</label>
					 <input type="number" class="form-control" name="user_phone"
						id="phone" placeholder="Enter here" aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
					<label for="address" class="form-label">User Address</label>
					<textarea style="height:100px;" class="form-control" name="user_address" placeholder="Enter your address" ></textarea>
					</div>
					<div class="container-text-center">
					<button class="btn btn-outline-success">Register</button>
					<button class="btn btn-outline-warning">Reset</button>
					</div>
					
			</form>
				
			</div>
			</div>		
		</div>

	</div>
	</div>
</body>
</html>