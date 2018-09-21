<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>  
	<head> <meta charset="UTF-8">
		<title></title> 
		<style type="text/css">
		.acimg{max-width: 100%; max-height: 100%;}
		.TB{
			width: 55%;
   			border-color: gray; 
   			align:center;
			margin-left: 17%;
			margin-top: 3%;
			}
		#container{margin: 0 auto; }	
		h3{width: 71%;
  			align:center;
		margin-left: 8%; margin-top: 2%}
		#acasearch{width: 700px;}
		.uu{background-color: rgb(120,120,120); color:white; font-size:1.1vw;
		}
		</style>
	</head>
	
	<body>
		<c:set var="root" value="<%=request.getContextPath()%>"/>
		
		<div id="container">
			<h3>관련 학원</h3>
			<table border="1" class ="TB"> 			   
			   	<c:forEach var="a" items="${acalist}">
			   	<tr>
			 		<td rowspan="3" class="uu">${number} <c:set var="number" value="${number-1}"/></td>
			 		<td rowspan="3" style="width:300px; height:200px;">
			 		<img class="acimg" src="${root}/save1/${a.academy_geogra}" />
			 		</td>
			 		<td colspan="2">${a.academy_title}</td>
			   	</tr>
			   	<tr>
					<td>${a.academy_id}</td>
					<td rowspan="2" style="width:300px; height:60px;">${a.academy_content}</td> 	
			   	</tr>
			   	<tr>
			 		<td>${a.academy_date}</td>
			   	</tr>
			  	</c:forEach>
			  
			  	<tr>	  
			      	<td colspan="5" align="center" height="40">	 
				  		${pageShow}
					</td>
				</tr>
			</table><br>
			
			<table id="acasearch" class ="TB">
			    <input type="text" size="20">
				<input type="submit" value="검색">
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<tr align="right">	  
			       	<a href="/menu/acadWriteForm.com">글쓰기</a>
			  	</tr>
			</table>
		
		</div>
		
	</body>
</html>