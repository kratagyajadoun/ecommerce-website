<%@page import="com.helper.Helper"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.User"%>
<%@page import="com.entities.Category"%>
<%@page import="com.dao.CategoryDao" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Map" %>
<%
	User user = (User) session.getAttribute("current-user");
	if (user == null) {
		session.setAttribute("message", "You are not logged in !!Log in first");
		response.sendRedirect("login.jsp");
		return;
	} else {
		if (user.getUserType().equals("normal")) {
			session.setAttribute("message", "You are not admin !! Do not access this page");
			response.sendRedirect("login.jsp");
			return;
		}
	}
%>


<%
      			CategoryDao cdao= new CategoryDao(FactoryProvider.getFactory());
      			List<Category> list=cdao.getCategories();
      			Map<String,Long> map=Helper.getCounts(FactoryProvider.getFactory());		
      		%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin panel</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container admin">
		<div class="conatainer-fluid">
		<%@include file="components/message.jsp" %>
		
		</div>
		<div class="row mt-3">
			<div class="col-md-4">
				<div class="admin-card card">

					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 150px;" class="img-fluid rounded-circle"
								alt="" src="img/users.png">
						</div>
						<h1><%=map.get("userCount") %></h1>
						<h1 class="text-upper text-muted">Users</h1>

					</div>

				</div>

			</div>
			<div class="col-md-4">
				<div class="card">

					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 93px;" class="img-fluid rounded-circle"
								alt="" src="img/categories.png">
						</div>
						<h1><%=list.size() %></h1>
						<h1 class="text-upper text-muted">Categories</h1>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">

					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 99px;" class="img-fluid rounded-circle"
								alt="" src="img/products.png">
						</div>
						<h1><%=map.get("productCount") %></h1>
						<h1 class="text-upper text-muted">Products</h1>

					</div>
				</div>
			</div>

		</div>

		<div class="row mt-3">

			<div class="col-md-6">

				<div class="card" data-toggle="modal" data-target="#add-product-modal">

					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 108px;" class="img-fluid rounded-circle"
								alt="" src="img/add_user.png">
						</div>
						<h1 class="text-upper text-muted mt-2">Add Product</h1>

					</div>
				</div>
			</div>




			<div class="col-md-6">

				<div class="card" data-toggle="modal" data-target="#add-category-modal">

					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 104px;" class="img-fluid rounded-circle"
								alt="" src="img/add_category.png">
						</div>
						<h1 class="text-upper text-muted mt-2">Add Category</h1>
					</div>
				</div>
			</div>



		</div>

</div>


<!-- Modal -->
<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill category details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        	<form action="ProductOperationServlet" method="post">
        	<input type="hidden" name="operation" value="addcategory">
        		<div class="form-group">
        			<input type="text" class="form-control" name="categoryTitle" placeholder="Enter category title" required/>
        		</div>
				<div class="form-group">
				<textarea class="form-control mt-2" style="height:200px;" placeholder="Add category description" name="categoryDescription" required></textarea>
				</div>
				<div class="container text-center">
				<button class="btn btn-outline-success mt-2">Add Category</button>
				<button type="button" class="btn btn-secondary mt-2" data-dismiss="modal">Close</button>
      			</div>
        	</form>
      </div>
    </div>
  </div>
</div>



<!-- Modal -->
<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Product Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">
        	
        	<input type="hidden" name="operation" value="addproduct">
        	
        	<div class="form-group">
        		<input type="text" class="form-control" placeholder="Enter title of product" name="pName" required>
        	</div>
        	
        	<div class="form-group mt-2">
        		<textarea style="height:150px;" class="form-control" placeholder="Enter product description" name="pDesc"></textarea>
        	</div>
        	
        	<div class="form-group mt-2">
        		<input type="number" class="form-control" placeholder="Enter price of product" name="pPrice" required>
        	</div>
        	
        	<div class="form-group mt-2">
        		<input type="number" class="form-control" placeholder="Enter product discount" name="pDiscount" required>
        	</div>
        	
        	<div class="form-group mt-2">
        		<input type="number" class="form-control" placeholder="Enter product quantity" name="pQuantity" required>
        	</div>
      		
      		
        	
        	<div class="form-group mt-2">
        		<select name="catId" class="form-control" id="">
        			<%
        				for(Category c:list){
        			%>
        			<option value="<%=c.getCategoryId()%>"><%=c.getCategoryTitle() %></option>
        			<%} %>
        		</select>
        	</div>
        	
        	<div class="form-group mt-2">
        		<label for="pPic">Select picture of product :</label>
        		<br><br>
        		<input type="file" name="pPic" required>
        	</div>
        	
        	<div class="container text-center">
        		<button class="btn btn-outline-success">Add Product</button>
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        	</div>
        </form>
      </div>
      
    </div>
  </div>
</div>

<%@include file="components/common_modal.jsp" %>

</body>
</html>