<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			.seminartable{margin-left:7%; margin-top:1.5%; font-family: 'Nanum Myeongjo', serif; font-weight: bold; font-size:1vw; } 
			.seminartable thead{font-size:1.1vw; background-color: rgb(80,80,80); border: 1px solid black;  color:white;}
			.seminartable tbody{}
			.seminarform{margin-right:10%; }
			.seminarform label, .seminarform input{font-family: 'Nanum Myeongjo', serif; font-weight:bold; font-size:1vw;} 
			.seminarform input[type="checkbox"], .seminarform label, .seminarform input[type="submit"]{margin-left:0.3%;}
			.seminarform input[type="checkbox"]{width:15px;}
			.pagediv  {position:absolute; left:600px; top:760px; font-size:20px; font-family: 'Nanum Myeongjo', serif; font-weight: bold;}
		</style>
			<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
			<script>
				$(function(){
					$(".write").click(function(){
						location.replace("${root}/seminarwriteform.com");

					});
					
					$(".title").click(function(){
						$(".seq").val($(this).attr("id"));
						$(".goviewform").submit();
					});
					
				});
				
			</script>
	</head> 
	
	<body>
		<form class="seminarform" action="/shearchedSeminarGo.com">
			<input type="text" size="20" name ="keyword">
			<input type="submit" value="검색" class ="btn">
			<br><br>
			<span class="seminarformspan ">
				
				<label>파이썬<input type="checkbox" name ="skills" value ="python"></label>
				<label>자바<input type="checkbox" name ="skills" value ="java"></label>
				<label>C++<input type="checkbox" name ="skills" value ="c++"></label>
				<label>JSP<input type="checkbox" name ="skills" value ="jsp"></label>
				
				<label>프론트엔드<input type="checkbox" name ="category"  value ="frontend"></label>
				<label>백엔드<input type="checkbox" name ="category"value ="backend"></label>
				<label>서버<input type="checkbox" name ="category"value ="server"></label>
				<label>웹<input type="checkbox" name ="category"value ="web"></label>
				<label>모바일<input type="checkbox" name ="category"value ="mobile"></label> <br>
				
				<label>지역:</label>
				<select name ="location">
					<option></option>
					<option>seoul</option>
					<option>gwangju</option>
					<option>busan</option>
					<option>daegu</option>
					<option>dageon</option>		
				</select>
				
				<label>일시:</label>
				<input type="date" name="startday">
				<label>~</label>
				<input type="date" name="endday">
			</span>
			<input type="button" value="글쓰기" class ="btn write" >
		</form>
		
		
		<table border = "1px solid black;" class ="seminartable table-hover">
			<thead>
			<tr>
				<td width="170px;">세미나 날짜</td>
				<td width="250px;">지역</td>
				<td width="400px">세미나명</td>
				<td width="80px;">조회수</td>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${semilist}" >
				<tr>
					<td >${item.startday}</td>
					<td >${item.location}</td>
					<td id =${item.seq} class ="title">${item.title}</td>
					<td >0</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
		<div class ="pagediv">
			${pageShow}
		</div>
		<form action="${root}/seminarview.com" class ="goviewform">
			<input type="hidden" class ="seq" name ="seq">
		</form>
		<!-- <div class ="Blockdiv">
		
		</div>
		<form id ="formforpaging" action ="/menu/seminarmain.com" >
			<input type="hidden" value ="0" id="currentPage" name ="currentPage">
			<input type="hidden" value ="0" id="currentBlock" name ="currentBlock">
		</form> -->
	</body>
</html>
