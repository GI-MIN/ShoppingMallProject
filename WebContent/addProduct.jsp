<%@ page language="java" contentType="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumptron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class = "col-sm-3">
					<input type="text" name="productId" class="form-control">
				</div>
			</div>
		
	
	
		<div class="form-group row">
			<label class="col-sm-2">상품명</label>
				<div class = "col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
		</div>
	
		<div class = "form-group row">
			<label class="col-sm-2">가격</label>
				<div class ="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">상세 정보</label>
			<div class="col-sm-3">
				<textarea name="description" cols="30" row="2" class ="form-control"></textarea>
			</div>
		</div>
		
		<div class = "form-group row">
			<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
		</div>
		
		<div class = "form-group row">
			<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
		</div>
		
		<div class = "form-group row">
			<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control">
				</div>
		</div>
		
		<div class = "form-group row">
			<label class="col-sm-2">상태</label>
				<div class="col-sm-3">
					<input type="radio" name="condition" value="NEW">신규 제품
					<input type="radio" name="condition" value="OLD">중고 제품
					<input type="radio" name="condition" vaile="Refurbished">재생 제품
				</div>
		</div>
		
		<div class = "form-group row">
			<label class="col-sm-2 col-sm-10">제조사</label>
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn-btn-primary" value="등록">
				</div>
		</div>
		</form>
	</div>
</body>
</html>