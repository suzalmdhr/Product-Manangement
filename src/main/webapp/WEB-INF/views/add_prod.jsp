<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
</head>
<body>
   
   <div class="container mt-4">
   <h1>Fill the product detail</h1>
   		
   		<form action="handle-product" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  
  
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Description</label>
    <input type="text" name="description" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Price</label>
    <input type="text" name="price" class="form-control" id="exampleInputPassword1">
  </div>
  
  
  
  <div clas="mb-4">
	<a class="btn btn-outline-danger" href="${pageContext.request.contextPath }/">Back</a>  
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
   		
   		
   </div>
   
</body>
</html>