<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="dto.Product" %>
<%@page import="dao.ProductRepository" %>
<jsp:useBean id = "productDAO" class="dao.ProductRepository" scope="session" />


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품 정보</h1>
		</div>
	</div>
	
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstace();
		Product product = dao.getProductById(id);
	%>
	<div class = "container">
		<div class = "row">
			<div class = "col-md-5">
				<img src = "./resources/images/<%=product.getFilename() %>" style = "width : 100% ">
			</div>
			<div class = "col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%></p>
				<p><b>상품 코드</b> : <span class = "bodge bodge-danger"><%=product.getProductId()%></span> </p>
				<p><b>제조사</b> : <%=product.getManufacturer() %></p>
				<p><b>분류</b> : <%=product.getCategory() %></p>
				<p><b>재고 수</b> : <%=product.getUnitsInStock() %></p>
				<h4><%=product.getUnitPrice() %>원</h4>
				<p><a href="#" class="btn btn-info">상품 주문</a> <a href="./products.jsp" class = "btn btn-secondary">상품 목록</a>
			</div>
		</div>
	</div>
	
</body>
</html>