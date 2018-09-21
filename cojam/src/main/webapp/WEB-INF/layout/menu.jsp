<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<c:set var="root" value="<%=request.getContextPath()%>"/>
		<meta charset="UTF-8">
		<title></title>
		
		<style>
			/* .menuul{margin-left:13%; list-style: none; margin-top:28%;}
			.menuul li{margin-top:21%; } */
			.logo{width:58%; margin-top:1%; margin-left:25%; z-index: 1; margin-bottom:15%;  float: none;}
			/* .menuul a{text-decoration:none; font-size: 1.4vw; color: rgb(70,70,70);font-family: 'Nanum Myeongjo', serif; font-weight: bold;}
			.menuul a:VISITED{color: rgb(70,70,70);}
			.menuul a:hover {background-color:  rgb(102,102,102);  color: white; text-align: center;}
			.menuul li:hover { width:500px;} */\
			.menuTable {margin-top:0%;}
			.menuTABLE td{text-align:right; width:240px; position: relative; left:-5px; padding-top:6%; padding-bottom:10%; font-size:1.27vw; }
			.menuTABLE a{font-family: 'Nanum Myeongjo', serif; font-weight: bold;}
			.menuTABLE td:hover{background-color: rgb(80,80,80); color:white; }	

			
		</style>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script>
			$(function(){
				$(".menuTABLE td")
				  .on( "mouseenter", function() {
				    $(this).children("a").css("color","white");
				  })
				  .on( "mouseleave", function() {
					  $(this).children("a").css("color","black");
				  });
			});
		</script>
	</head> 
	
	<body>
		<a href="${pageContext.request.contextPath}/main.com">
			<img class = "logo" src = "${pageContext.request.contextPath}/img/logo.png">
		</a>
	
		<%-- <ul class = "menuul">
			<li ><a href="${root}/menu/freeboard.com">&nbsp;&nbsp;&nbsp;게시판</a></li>
			<li><a href="${root}/menu/seminarmain.com">&nbsp;&nbsp;&nbsp;세미나</a></li>
			<li><a href="${root}/menu/license.com">&nbsp;&nbsp;&nbsp;자격증</a></li>
			<li><a href="${root}/menu/lecture.com">인터넷 강의</a></li>
			<li><a href="${root}/menu/academy.com">&nbsp;관련 학원</a></li>
			<li><a href="${root}/menu/sites.com">관련 사이트</a></li>
		</ul> --%>
		
		<table class ="menuTABLE">
			<tr>
				<td><a href="${root}/menu/freeboard.com">게시판&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
			</tr>
			<tr>
				<td><a href="${root}/menu/seminarmain.com">세미나&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
			</tr>
			<tr>
				<td><a href="${root}/menu/license.com">자격증&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
			</tr>
			<tr>
				<td><a href="${root}/menu/lecture.com">인터넷 강의&nbsp;</a></td>
			</tr>
			<tr>
				<td><a href="${root}/menu/academy.com">관련 학원&nbsp;&nbsp;&nbsp;</a></td>
			</tr>
			<tr>
				<td><a href="${root}/menu/sites.com">관련 사이트&nbsp;</a></td>
			</tr>
			
		</table>
		
	</body>
</html>
