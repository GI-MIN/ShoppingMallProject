<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@page import="java.util.ArrayList" %>
<%@page import="dto.Product" %>
<%@page import="dao.ProductRepository" %>
<!--<jsp:useBean id = "productDAO" class="dao.ProductRepository" scope="session" />-->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script type="text/javascript" src = "ahead_time.js"></script>
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품 목록</h1>
		</div>
	</div>
	
	
	<%
		ProductRepository dao = ProductRepository.getInstace();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	
	<div class = "container">
		<div class = "row" align="center">
			<%
				for(int i =0; i<listOfProducts.size(); i++){
					Product product= listOfProducts.get(i);
				
			%>
			<div class = "col-md-4">
				<img src="./resources/images/<%=product.getFilename() %>" style= "width : 100%" />
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %></p>
				<p><%=product.getUnitPrice() %></p>
				<p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상세 정보</a>
			</div>
			
			<%
				}
			%>
		</div>
		<br/>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<!--<jsp:include page="ahead_timer.jsp"></jsp:include>--> <!-- 계속해서 변경되는 시간(현재시간 반영) -->
</body>
</html>