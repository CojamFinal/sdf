<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>  
	<head>
		<meta charset="utf-8">
		<title></title> 
		<style type="text/css">
			#container{margin: 0 auto;}	
			h3{width: 71%;
   			align:center;
			margin-left: 8%; margin-top: 2%}
			.licimg{max-width: 100%; max-height: 100%;}
			.TB{
			height:100%;
			align:center; 
			margin-left: 17%;
			margin-top: 3%;
			width: 55%
			}
			.TB2{
			width: 71%;
   			border-color: gray; 
   			align:center;
			margin-left: 13%;
			}
			.uu{background-color: rgb(120,120,120); color:white; font-size:1.1vw;
			}
		</style>
	</head>
	
	<body>
		<c:set var="root" value="<%=request.getContextPath()%>"/>
		<div id="container">
			<h3>자격증<%-- ${totalCount} --%></h3>
			
			<table border="1"  class ="TB"> 		   
			   	<c:forEach var="a" items="${liclist}">
				   	<tr>
				 		<td rowspan="3" class="uu">${number} <c:set var="number" value="${number-1}"/></td>
				 		<td rowspan="3" style="width:300px; height:200px;">
							<img class="licimg" src="${root}/save/${a.lc_imgname}" />
				 		</td>
				 		<td colspan="2">${a.lc_group} - ${a.lc_name}</td>
				   	</tr>
				   	
				   	<tr>
						<td>${a.lc_id}</td>
						<td rowspan="2" style="width:200px; height:60px;">${a.lc_content}</td> 	
				   	</tr>
				   
				   	<tr>
				 		<td>${a.lc_date}</td>
				   	</tr>
			  	</c:forEach>
			  	
			  	<tr>	  
			      	<td colspan="5" align="center" height="40">	 
				  		${pageShow}
					</td>
				</tr>
				
			</table><br>
			
			<table width="700"  class ="TB2">
			    <input type="text" size="20">
				<input type="submit" value="검색">
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<tr align="right">	  
			       	<a href="/menu/licWriteForm.com">글쓰기</a>
			  	</tr>
			</table>
		</div>
	
	</body>
</html>