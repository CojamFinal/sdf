<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
		<style>
			.buttonInside{
			  position:relative;
			  margin-bottom:10px;
			}
			
			#container{
			  width: 300px;
			}
			
			input{
			  height:25px;
			  width:100%;
			  padding-left:10px;
			  border-radius: 4px;
			  border:none;outline:none;
			}
			
			button{
			  position:absolute;
			  right: 0px;
			  top: 4px;
			  border:none;
			  height:20px;
			  width:20px;
			  border-radius:100%;
			  outline:none;
			  text-align:center;
			  font-weight:bold;
			  padding:2px;
			}
			
			button:hover{
			  cursor:pointer;
			}
			
			#help{
			  display:none;
			  font-style:italic;
			  font-size:0.8em;
			}
			form p, .findidP a{font-family: 'Nanum Myeongjo', serif; font-weight: bold; font-size: 0.85vw;}
			form .findidP:hover {text-decoration: underline; cursor: pointer;}
			form input {height:30px;}
			form .menuP{font-family:'Nanum Myeongjo', serif; font-weight: bold; font-size:1.55vw; margin-bottom:5%;}
			input[type=button] {font-family:'Nanum Myeongjo', serif; font-weight:bold; font-size:1.2vw; height:40px; border-radius: 150px; width:45%; margin-top:8%; 
			margin-bottom: 10%; }
			form{margin-left:33%; margin-top:11%; }
			.findidP{margin-left:-67%; }
		</style>
		
		<script type="text/javascript" src ="${root}/jquery/lib/jquery.js"></script>
		<script>
			
			$(function() { $("#login").click( function() {
							$.ajax({
								type : 'POST',
								url : '/login.com',
								data : {
									"id" : $('#id').val(),
									"password" : $("#password").val()
								},
								
								success : function(data) {
									if ($.trim(data) == 0) {
										alert("로그인 정보 틀림");
	
									} else {
										location.href = "/main.com";
	
									}
								},
								
								error : function(request, status, error) {
									alert("code = " + request.status
											+ " message = " + request.responseText
											+ " error = " + error); // 실패 시 처리
								}
	
							}); //end ajax  
						});
					});
		</script>
	</head>
	
	<body>
		<form>
		<div id="container">
		
		  <p class ="menuP">아이디</p>
		  <div class="buttonInside">
		  	<input type ="text" name ="id" id ="id">
		  </div>
		  
		  <p class ="menuP">비밀번호</p>
		  <div class="buttonInside">
		  	<input  type="password" name ="password" id = "password">
		  </div>
		  
		  <input type="button" value ="로그인" id ="login">
		  
		</div>
		<p class ="findidP">id를 잊으셨나요? → <a> &nbsp;&nbsp;&nbsp;id 찾으러 가기</a></p>
		<p class ="findidP">비밀번호를 잊으셨나요? → <a>&nbsp; 비밀번호 찾으러 가기</a> </p>
		</form>
	</body>
</html>