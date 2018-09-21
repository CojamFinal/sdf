<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	
</script>
<style>
	
	  .seminarviewspan h1, h2, h4 {font-family: 'Nanum Myeongjo', serif; font-size:2.5vw; margin-right:10%; color: black; text-align: center; font-weight: bold;} 
	   .seminarviewspan h2 {font-size:1.3vw; } 
	  
	  .seminarviewspan .div2{font-family: 'Nanum Myeongjo', serif; font-weight:bold; margin-left:13%; width:70%; border:0px solidblack; background-color:  rgb(246,248,243); text-align: left; 
	  word-break:break-all;background-color: white; padding: 2%; }
	  .seminarviewspan .div1, .div3{border:0px solid black; width:70%; margin-left:13%; margin-bottom:2%; margin-top:3%;}
	  .seminarviewspan .div1 h2{text-align: left; margin-left:2%;}
	   .seminarviewspan h4{font-size:1vw; margin-right:2%; float:right;}
	  
	  
	  
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
				$(function(){
					
					$(".update").click(function(){
						$(".goupdateform").submit();
					});
					$(".delete").click(function(){
						$(".seqdelete").val($("#seq").val());
						$(".godelete").submit();
					});
					
				});
</script>

</head>
<body>
<span class="seminarviewspan">
	<c:forEach var="item" items="${datas}" >
			
			<h1>${item.title}</h1>
			<div class ="div1">
			<h2>날짜: ${item.startday}~${item.endday}</h2>
			<h2>주소: ${item.location }</h2>
			</div>
			
			<div class="div2">
			
			${item.content }
			
			</div>
			<div class="div3">
			<h4 class ="update">수정</h4> <h4 class ="delete">삭제</h4>
			</div>
			<form action="${root}/seminarupdateform.com" class ="goupdateform" > <!-- style="visibility: hidden; "-->
			<input type="hidden" id="seq" value= ${item.seq } name ="seq">
			</form>
			
			<form action="${root}/seminardelete.com" class ="godelete">
			<input type="hidden" class ="seqdelete" name ="seq">
			</form>
	</c:forEach>
</span>	


	
	
	

</body>
</html>