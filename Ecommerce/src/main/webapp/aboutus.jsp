<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User panel</title>
<%@include file="components/common_css_js.jsp" %>
</head>
<body>
<%@include file="components/navbar.jsp" %>
<br><br><br>
<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        About Us
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body"><br><br>
        <strong>ShopEasy</strong> is an online shopping website. We are committed to making your shopping experience beautiful and comfortable. We offer you variety of products listed under different categories which makes it easier for you to browse your desired products and order them. 
      </div>
    </div>
  </div>
  <div class="accordion-item"><br><br><br>
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Contact Us
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body"><br><br>
        <strong>ShopEasy</strong> <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body"><br><br>
        <strong>ShopEasy</strong> is an online shopping website. We are committed to making your shopping experience beautiful and comfortable. We offer you variety of products listed under different categories which makes it easier for you to browse your desired products and order them. 
      </div>
    </div>
  </div> 
      </div>
    </div>
  </div>
</div>
</body>
</html>