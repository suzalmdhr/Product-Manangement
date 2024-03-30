<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp" %> 
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <%@page isELIgnored="false"%>
</head>
<body>


	<div class="container mt-4">
   <h1>Update product detail</h1>
   		
   		<form action="${pageContext.request.contextPath }/handle-product" method="post">
  <div class="mb-3">
  <input type="hidden" name="id" value="${prod.id }"/>
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input type="text" value="${prod.name }" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  
  
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Description</label>
    <input type="text" value="${prod.description }" name="description" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Price</label>
    <input type="text" value="${prod.price }" name="price" class="form-control" id="exampleInputPassword1">
  </div>
  
  
  
  <div clas="mb-4">
	<a class="btn btn-outline-danger" href="${pageContext.request.contextPath }/">Back</a>  
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
   		
   		
   </div>

</body>
</html>