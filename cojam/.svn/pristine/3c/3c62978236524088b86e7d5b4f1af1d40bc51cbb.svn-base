<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>  
	<head>
	<meta charset="UTF-8">
	<title></title> 
		<style type="text/css">
			#container{margin: 0 auto; }	
			h3{width: 71%;
   			align:center;
			margin-left: 8%; margin-top: 2% }
			
			.TB{
			width: 55%;
   			border-color: gray; 
   			align:center;
			margin-left: 17%;
			margin-top: 3%;
			}
			.TB2{
			width: 71%;
   			border-color: gray; 
   			align:center;
			margin-left: 16%;
			}
			.uu{
			background-color: rgb(80,80,80); color:white; font-size:1.1vw;}
			
		</style>
	</head>
	
	<body>
	<c:set var="root" value="<%=request.getContextPath()%>"/>
	
	<div id="container">
		<h3>게시판</h3>

		<table border="1" class ="TB">

			<thead class="uu">
				<tr>
					<th style="width: 10%;">번호</th>
					<th style="width: 55%;">제목</th>
					<th style="width: 10%;">작성자</th>
					<th style="width: 15%;">날짜</th>
				</tr>
			</thead>
			
			<c:forEach var="a" items="${freelist}">
				<tbody>
					<td style="width: 10%; height: 50px;">${number} <c:set var="number" value="${number-1}"/></td>
					<td style="width: 55%;">
					<a href="/menu/freeContent.com?seq=${a.freeboard_seq}">${a.freeboard_title}</a></td>
					<td style="width: 10%;">${a.freeboard_id}</td>
					<td style="width: 15%;">${a.freeboard_date}</td>
				</tbody>
			</c:forEach>

			<tr>
				<td colspan="5" align="center" height="40">
					${pageShow}
				</td>
			</tr>
		</table> <br>

		<table class ="TB2" >
			<td>
			    <input type="text" size="20">
				<input type="submit" value="검색">
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<a href="/menu/freeWriteForm.com">글쓰기</a>
			</td>
		</table>
		
	</div>
	
	</body>
</html>