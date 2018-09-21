<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			.mainimg{width:50%; margin-left:-10%; margin-top:8%;}
			.maindiv1, .maindiv2{width: 35%; margin-top:6%; font-family: 'Nanum Myeongjo', serif; position: absolute; border: 0px solid black; top:550px; text-align: left;}	
			.maindiv1{left:260px;}
			.maindiv2 { left:670px;}
			.maindiv1 ul, .maindiv2 ul {list-style: none; text-align: left;}
			.maindiv1 h4, .maindiv2 h4 {font-family: 'Nanum Myeongjo', serif; font-weight: bold;}
			.maindiv1 a, .maindiv2 a {cursor: pointer;}
			li{list-style: none;} 
		</style>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script>
		var imgList = [ "body.png", "kakaocode2018.png", "wooa.png"];
		var locationlist = ["#","https://programmers.co.kr/competitions/35/welcome-kakao","http://woowabros.github.io/woowabros/2018/04/22/do_you_wanna_be_a_woowa_developer.html"];
		var i =1;
			$(function(){
				 
				 setTimeout(function() {
					 $(".mainimga").attr("href",locationlist[i]);
					 $(".mainimg").attr("src","${root}/img/"+imgList[i]).stop(true,true).hide().fadeIn("slow");
					 	i= i+1;
					  }, 2000);
				 
					 setInterval(function() {
					 $(".mainimga").attr("href",locationlist[i]);
					 $(".mainimg").attr("src","${root}/img/"+imgList[i]).stop(true,true).hide().fadeIn("slow");
					
					 i = i+1;
					 if (i ==3){
						 i=0;
					 }
					}, 7000);  
					
				 
				
			});
		</script>
	</head> 
	
	<body>
	
		<a href ="" class ="mainimga" target="new"><img class = "mainimg" src = "${root}/img/body.png"></a>
		<br>
		
		<div class = "maindiv1">
			
			
			<ul>
			<li><h4>자유게시판</h4></li>
			<c:forEach var="item" items="${MainFreeboardList}" >
			<li><a>${item.freeboard_title}</a></li>
				
			</c:forEach>
			</ul>
		</div>
		
		<div class = "maindiv2">
			<li><h4>세미나</h4></li>
			<c:forEach var="item" items="${MainSeminarList}" >
			<li><a>${item.title}</a></li>
				
			</c:forEach>
		</div>
		
	</body>
</html>
