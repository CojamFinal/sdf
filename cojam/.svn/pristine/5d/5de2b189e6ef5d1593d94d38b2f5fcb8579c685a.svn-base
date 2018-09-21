<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
	<style>
	.a{
			width: 55%;
   			border-color: gray; 
   			align:center;
			margin-left: 17%;
			margin-top: 7%;
			}
	.TB{
			width: 55%;
   			border-color: gray; 
   			align:center;
			margin-left: 18%;
			margin-top: 1%;
			}
			.uu{background-color: rgb(110,110,110); color:white; font-size:1.1vw;
			}
	</style>
		<meta charset="UTF-8">
		<title></title>
	</head>
	
	<body>
		<table class="a" border="1">
			<tr height="40">
				<td class="uu">번호</td><td width="55">${dto.freeboard_seq}</td>
				<td width="95" class="uu">작성자</td><td width="125">${dto.freeboard_id}</td>
				<td width="65" class="uu">날짜</td><td>${dto.freeboard_date}</td>
			</tr>
			<tr height="50">
				<td class="uu">제목</td><td colspan="5">${dto.freeboard_title}</td>
			</tr>
			<tr height="500">
				<td class="uu">내용</td><td colspan="5">${dto.freeboard_content}</td>
			</tr>
		</table> <br>
		<div class="TB">
		<input type="button" value="삭제하기" onclick="location.href='/menu/delete.com?seq=${dto.freeboard_seq}'">
		</div>
	</body>
</html>