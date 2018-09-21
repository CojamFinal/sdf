<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>  
	<head>
		<meta charset="UTF-8">
<style>
h3{width: 71%;
   			align:center;
			margin-left: 8%; margin-top: 2%}
.TB{
width: 55%;
border-color: black; align:center;
margin-left: 17%;
margin-top: 3%;
}
.uu{background-color: rgb(0,0,0); color:white; font-size:1.1vw; vertical-align: top; padding-top: 5px;
}
</style>
		<title></title> 
	</head>
	<body>
	
	<c:set var="root" value="<%=request.getContextPath()%>"/>
	<div id="container" >
	<h3>인터넷 강의<%-- ${totalCount} --%></h3>
	
	<table border="1" class ="TB">  
	   	<c:forEach var="a" items="${leclist}"> 
	   	<c:set var="youtube" value="${fn:replace(a.lecture_video,'https://','http://')}"/>
	   	<c:set var="youtube2" value="${fn:replace(youtube,'watch?v=','embed/')}"/> 
	   	
	   	<tr>
	 		<td rowspan="3" class="uu">${number} <c:set var="number" value="${number-1}"/></td>
	 		<td rowspan="3" class="uu" style="width:200px; height:200px;">
	 		<iframe width="300" height="300" src="${youtube2}?&vq=auto&rel=0" frameborder="0" allowfullscreen></iframe>
	 		</td>
	 		<td colspan="2">${a.lecture_name}</td>
	   	</tr>
	   	
	   	<tr>
			<td>${a.lecture_id}</td>
			<td rowspan="2" style="width:300px; height:60px;">${a.lecture_content}</td> 	
	   	</tr>
	   	
	   	<tr>
	 		<td>${a.lecture_date}</td>
	   	</tr>
	  	</c:forEach>
	  	
	  	<tr>	  
	      	<td colspan="5" align="center" height="40">	 
		  		${pageShow}
			</td>
		</tr>
	</table><br>
	
	<table width="700"class ="TB" >
	    <input type="text" size="20">
		<input type="submit" value="검색">
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<tr align="right">	  
	       	<a href="/menu/lecWriteForm.com">강의올리기</a>
	  	</tr>
	</table>
	
	</div>
	 
	</body>
</html>