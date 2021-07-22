<%

User user = (User) session.getAttribute("current-user");
if (user == null) {
	session.setAttribute("message", "You are not logged in !!Log in first to access checkout page");
	response.sendRedirect("login.jsp");
	return;
}



%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>
<%@ include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center mb-4">Your selected items</h3>
						<div class="cart-body"></div>
					</div>

				</div>


			</div>
			<div class="col-md-6">

				<div class="card">
					<div class="card-body">
						<h3 class="text-center mb-4">Your details for order</h3>
				
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" value="<%= user.getUserEmail() %>" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>
							
							<div class="form-group">
								<label for="name">Your Name</label> <input
									type="text" class="form-control" value="<%= user.getUserName()%>" id="name"
									aria-describedby="emailHelp" placeholder="Enter name">
							</div>
							
							<div class="form-group">
								<label for="number">Your Number</label> <input
									type="text" class="form-control" value="<%= user.getUserPhone()%>" id="number"
									aria-describedby="emailHelp" placeholder="Enter number">
							</div>
							
							<div class="form-group">
    						<label for="exampleFormControlTextarea1">Your shipping address</label>
    						<textarea class="form-control" id="exampleFormControlTextarea1" value="<%= user.getUserAddress() %>" placeholder="Enter your address" rows="3"></textarea>
  							</div>
							
							<div class="container text-center">
								<a href="normal.jsp"><button class="btn btn-outline-success">Order now</button></a>
								<a href="index.jsp"><button class="btn btn-outline-primary">Continue shopping</button></a>
							</div>	
						
					</div>

				</div>


			</div>


		</div>


	</div>


	<%@include file="components/common_modal.jsp"%>
</body>
</html>