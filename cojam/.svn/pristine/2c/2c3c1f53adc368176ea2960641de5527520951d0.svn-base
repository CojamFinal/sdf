<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<c:set var="root" value="<%=request.getContextPath()%>"/>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" integrity="sha384-pjaaA8dDz/5BgdFUPX6M/9SUZv4d12SUPF0axWc+VRZkx5xU3daN+lYb49+Ax+Tl" crossorigin="anonymous"></script>
		
		<style>
			@import url('https://fonts.googleapis.com/css?family=Sunflower:300');
			@import url('https://fonts.googleapis.com/css?family=Nanum+Myeongjo');
			@import url('https://fonts.googleapis.com/css?family=Do+Hyeon');
			@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
			body{background-color: rgb(80,80,80);/* position: fixed; overflow-y: scroll; */}
			div{border:0px solid black; background-color: rgb(246,248,243);}
			div#menu{height:100%; width:15%;  margin-left: 9%; position:absolute; margin-top:3%;}
			div#top{height: 3vw; width: 83%; margin-left:9%;position:absolute; padding-bottom: -20%;}
			div#body{height:100%; width:68%; text-align:center; margin-left:24%; margin-top:3%; position:absolute;}
			::-webkit-scrollbar {width: 12px;}
			::-webkit-scrollbar-track {
			    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
			    border-radius: 10px;
			}
			 
			::-webkit-scrollbar-thumb {
			    border-radius: 10px;
			    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
			}
		</style>
	
	</head> 
	
	<body>
	
		<div id="menu">
			<tiles:insertAttribute name = "menu"/>
		</div>
		
		<c:if test="${sessionScope.id == null}">
	   		<div id="top">
				<tiles:insertAttribute name = "top"/>
			</div>
		</c:if>
		
		<c:if test="${sessionScope.id != null}">
	   		<div id="top">
				<tiles:insertAttribute name = "top2"/>
			</div>
		</c:if>
		
		<div id="body">
			<tiles:insertAttribute name = "body"/>
		</div>
		
	</body>
</html>
