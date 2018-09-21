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
	.TB{
			width: 55%;
   			border-color: gray; 
   			align:center;
			margin-left: 15%;
			margin-top: 5%;
			}
	
	</style>
		<meta charset="UTF-8">
		<title></title>
	</head>
	
	<body>
		<h3>게시글 작성</h3>
	
		<form method="post" action="/menu/lectureread.com" enctype="multipart/form-data">
			<c:choose>
				<c:when test="${null eq id}">
					<input type="hidden" name="lecture_id" value="익명">
				</c:when>
				
				<c:when test="${null ne id}">
					<input type="hidden" name="lecture_id" value="${sessionScope.id}">
				</c:when>
			</c:choose>
			
			

			<div class="TB">
			<textarea name=" lecture_name" rows="1" cols="40" placeholder="강의명을 입력하세요"></textarea>
		<br>
			<textarea name=" lecture_content" rows="12" cols="40" placeholder="내용을 입력하세요"></textarea>

			
<br>
			<textarea name="lecture_video" rows="3" cols="40" placeholder="유튜브 링크주소를 입력하세요"></textarea>
			<br>
			<button type="submit">작성</button>
			</div>
		
		</form>
	
	</body>
</html>