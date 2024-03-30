<html>

<head> <%@include file="./base.jsp" %> 
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <%@page isELIgnored="false"%>
</head>

<body>

<h1> Product Management System</h1>


		
		  <table class="table">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${products }" var="p">
    <tr>
      <th scope="row">${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td>${p.price }</td>
      <td>
		<a href="delete/${p.id }"><i class="fa-solid fa-trash"></i></a> 
		<a href="update/${p.id }"><i class="fa-regular fa-pen-to-square"></i></a>     
      </td>
    </tr>
    </c:forEach>
    
  </tbody>
</table>


	<div clas="mb-4">
	<a class="btn btn-outline-danger" href="${pageContext.request.contextPath }/add">Add</a>  
  </div>

</body>
</html>
