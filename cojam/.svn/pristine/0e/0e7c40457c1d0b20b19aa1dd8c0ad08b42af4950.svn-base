<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>

	<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
			<style>
				.sitesdiv img {
					float: left;
					width: 20%;
				}
				
				.sitesdiv {
					box-sizing: content-box;
					width: 70%;
					margin-left: 11%;
					height: 130px;
					margin-top: 2%;
				}
				
				.sitesdiv p {
					margin: 20px;
					padding: 10px;
				}
				
			</style>
			
	</head>
	
	<body>
	
		<form>
			<input type="text" size="20"> <input type="submit" value="submit">
		</form>
		
		${number} <c:set var="number" value="${number-1}"/> <!-- 번호 -->
	
		<c:forEach var="items" items="${siteslist}">
			<div style="border: 1px solid black;" class="sitesdiv">
				<img src="${pageContext.request.contextPath}/img/sitesImg/${items.seq}.${items.imgtype}" height="130px;">
				<p>${items.previewcontent}</p>
			</div>
		</c:forEach>
		
		${pageShow} <!-- 페이징처리 -->
		
	</body>
	
</html>