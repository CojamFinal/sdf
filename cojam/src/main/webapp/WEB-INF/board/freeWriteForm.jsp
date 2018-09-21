<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
	<style type="text/css">
			#container{margin: 0 auto; }	
			h3{width: 71%;
   			align:center;
			margin-left: 6%; margin-top: 2% }
			
			.TB{
			width: 55%;
   			border-color: gray; 
   			align:center;
			margin-left: 15%;
			margin-top: 3%;
			}
			.TB2{
			width: 55%;
   			border-color: gray; 
   			align:center;
			margin-left: 19%;
			margin-top: 1%;
			}
		
		</style>
		<meta charset="UTF-8">
		<title></title>
	</head>
	
	<body>
		<h3>게시글 작성</h3>
		
		<form class="TB" method="post" action="/menu/freeboardread.com">
		
			<c:choose>
				<c:when test="${null eq id}">
				<input type="hidden" name="freeboard_id" value="익명">
				</c:when>
				<c:when test="${null ne id}">
				<input type="hidden" name="freeboard_id" value="${sessionScope.id}">
				</c:when>
			</c:choose>
			<div class="TB2">
				<textarea name="freeboard_title" rows="1" cols="40" placeholder="제목을 입력하세요"></textarea>
				<br>
				<textarea name="freeboard_content" rows="15" cols="40" placeholder="내용을 입력하세요"></textarea>
				<br>
				
		
				<button type="submit">작성</button>
			</div>
		</form>
	
	</body>
</html>