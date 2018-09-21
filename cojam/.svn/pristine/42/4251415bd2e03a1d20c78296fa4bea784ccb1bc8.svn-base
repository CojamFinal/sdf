<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
	<style type="text/css">
	h3{width: 71%;
   			align:center;
			margin-left: 6%; margin-top: 2% }
	.TB1{
			width: 55%;
   			border-color: gray; 
   			align:center;
			margin-left: 15%;
			margin-top: 3%;
			}
	</style>
		<meta charset="UTF-8">
		<title></title>
	</head>

	<body>
		<h3>게시글 작성</h3>
	
		<form method="post" action="/menu/licenseread.com" enctype="multipart/form-data">
			<c:choose>
				<c:when test="${null eq id}">
					<input type="hidden" name="lc_id" value="익명">
				</c:when>
				
				<c:when test="${null ne id}">
					<input type="hidden" name="lc_id" value="${sessionScope.id}">
				</c:when>
			</c:choose>
			
			
			
		<div class="TB1">
			<textarea name="lc_group" rows="1" cols="40" placeholder="자격증분류를 입력하세요"></textarea>
			<br>

			<textarea name="lc_name" rows="1" cols="40" placeholder="자격증명을 입력하세요"></textarea>
			<br><br>
			<textarea name="lc_content" rows="15" cols="40" placeholder="내용을 입력하세요"></textarea>
					</div>
			<label>이미지업로드</label> <input type="file" name="photo"  onchange="previewImage(this,'View_area')"/>

			<button type="submit">작성</button>
		</form>
	
	</body>
</html>