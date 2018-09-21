<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
		
		<style>
			form{margin-left:7%;}
			h3{font-size:1.3vw; }
			label{font-size: 1.3vw;}
			legend{font-size:1.1vw; font-weight: bold;}
			h1, h3, label, legend{font-family: 'Nanum Myeongjo', serif; font-weight:bold; color:rgb(90,90,90);}
			h1 {font-family: 'Do Hyeon', sans-serif;}
			h1{font-size:2.8vw; margin-right:10%; color: black; margin-bottom:8%;}
			select{height:30px; font-size:1vw; font-family: 'Nanum Myeongjo', serif; font-weight: bold; color:rgb(90,90,90);}
			form p, form h3 {margin-top:6%;margin-bottom: 5%;}
			button:hover{cursor:pointer;}
			fieldset{position: relative; left:350px; top:-375px; border:0px;}
			form img {width: 50px; height:50px;}
			fieldset p, .passp, .interestp{font-size:0.7vw; font-family: 'Nanum Myeongjo', serif; font-weight: bold; color:rgb(70,70,70); }	  
			fieldset p{font-size:0.85vw;}
			fieldset a{font-size:0.8vw;}
		
			.interestbox{position: absolute; width:35%; height:80px; background-color: white; top:700px; left:700px; }
			.interestbox p {text-align: left; font-family: 'Do Hyeon', sans-serif;font-size: 1.5vw;  }
			.interestspan{font-family: 'Do Hyeon', sans-serif; color:rgb(70,70,70); font-size: 1.3vw; font-weight:bold;}
			.menradio{margin-left:10px; margin-bottom: 15px; margin-top:-30px;}
			
			.buttonInside{
			  position:relative;
			  margin-bottom:10px;
			}
			
			#container{
			  width: 25%;
			  margin-left:15%;
			}
			
			input{
			  height:30px;
			  width:100%;
			  padding-left:10px;
			  border-radius: 4px;
			  border:none;outline:none;
			}
			
			input[type=radio]{
			  display:inline-block;
			  width:10%;
			  padding-left:10px;
			  border-radius: 4px;
			  border:none;outline:none;
			}
			
			button {
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
			
			input[type=submit]{
			    position:absolute;
			  right: 0px;
			  top: 100px;
			  left:200px;
			  border:none;
			  height:80px;
			  width:200px;
			  border-radius:50%;
			  outline:none;
			  text-align:center;
			  font-weight:bold;
			  padding:2px;
			  font-size: 1.7vw; background-color: rgb(150,150,150); 
			  color:white; font-family: 'Do Hyeon', sans-serif;
			}
			
			#overlapIdBtn{ position:absolute;  font-family: 'Nanum Myeongjo', serif;  font-size: 0.8vw; 
			  right: 0px;
			  top: -35px;
			  border:none;
			  height:25px;
			  width:80px;
			  border-radius:0%;
			  outline:none;
			  text-align:center;
			  font-weight:bold;
			  padding:2px;
			  }
			  .addinfoP {margin-bottom: 7%;}
		
		</style>
		
		<script type="text/javascript" src ="${root}/jquery/lib/jquery.js"></script>
		<script type="text/javascript" src ="${root}/jquery/lib/jquery.bgiframe.min.js"></script>
		<script type="text/javascript" src ="${root}/jquery/lib/jquery.ajaxQueue.js"></script>
		<script type="text/javascript" src ="${root}/jquery/jquery.autocomplete.js"></script>
		<link rel="stylesheet" type="text/css" href="${root}/jquery/jquery.autocomplete.css"/>
		
		<script>
			var availableTags =[
				'가나다라마바사',
				'어쩌구저쩌구',
				'어어어어억'		
			];
			
			var overlapIdCheck = false;
			var id = "";
			
			function submitCheck(){
				
				if($("#id").val() == ""){
					alert("id를 입력해주세요");
					return false;
				}
				
				if($("#password").val() == ""){
					alert("비밀번호를 입력해주세요");
					return false;
				}
				
				if ($("#id").val() != id){
					overlapIdCheck = false;
				}
				
				if (overlapIdCheck == false){
					alert("id를 중복체크 해주세요");
					return false;
				}
				
				return true;
			}
			
			$(function(){
				$("#interest").autocomplete(availableTags,{
					matchContains: true,
					selectFirst: false
				});
				
				$(".womenicon").click(function(){
					$(".menradio").attr("checked","false");
					$(".womenradio").attr("checked","true");
				});
				
				$(".menicon").click(function(){
					$(".womenradio").attr("checked","false");
					$(".menradio").attr("checked","true");
				});
				
				$("#overlapIdBtn").click(function(){
					id = $('#id').val();
				    $.ajax({
		                type: 'POST',
		                url: '/overlapIdCheck.com',
		                data: {
		                    "id" : $('#id').val()
		                },
		                success: function(data){
		                	
		                    if($.trim(data) == 0){
		              
		                    	overlapIdCheck = true;
		                    	alert("중복된 아이디가 없습니다.");
		                    }
		                    else{
		                    	overlapIdCheck = false;
		                    	alert("중복된 아이디가 있습니다.");
		                    }
		                }, error:function(request,status,error) {
		                    alert("code = "+ request.status + " message = " + 
		                    	  request.responseText + " error = " + error); // 실패 시 처리
		                   }
		
		            }); //end ajax    
		
				});
				
			});
			
		</script>
	</head>
	
	<body>
		<!-- <div class ="interestbox"></div> -->
			<h1>회원가입</h1>
			
			<form action="/joinOk.com" onsubmit ="return submitCheck()" method="post">
				<div id="container">
			            <h3>아이디</h3>
			            <div class="buttonInside">
				            <input placeholder="" type="text" name="id" id="id">
				            <input type="button" id="overlapIdBtn" value="중복체크"></input>
			            </div>
			            
			            <h3>패스워드</h3>
			            <p class="passp">비밀번호를 입력해주세요</p>
			            <div class="buttonInside">
			              <input  type="password" name ="password" id = "password">
			              <button id="showPassword"><i class="fa fa-eye" aria-hidden="true"></i></button>
			            </div>
			            
			            <h3>이메일</h3>
			            <div class="buttonInside">
			              <input type="email" name ="email">
			            </div>
			           <!--  
			            <h3>관심사</h3>
			            <p class ="interestp"  style ="white-space:nowrap; margin-left:-4%;">#으로 시작해 콤마(,)로 관심사를 분리해주세요</p>
						<input type="text" size="30" id="interest" name ="interest" value="#"> -->
						
			            <div class="buttonInside">
			       			<input type="submit" aria-hidden="true" class="fa fa-eye" value ="가입">
			            </div> 
			    </div>
			    
			    <fieldset id = "container">
			    	<legend>추가 정보</legend>
			    	<p class="addinfoP">추가 정보를 입력하시면 핸드폰, 이메일 등으로 정보를 보내드립니다. <a>자세히 보기</a></p>
			    	
			    	 	  
			       		  <img src = "${pageContext.request.contextPath}/img/women_symbol.svg" class ="womenicon">
			       		  <img src = "${pageContext.request.contextPath}/img/men_symbol.svg"class ="menicon"> <br>
			       		  <input type="radio" name ="gender" class="womenradio" >
			              <input type="radio" name ="gender" class="menradio">
			    
			        <div class="buttonInside">
			       		<label>지역</label>
			       		
						<select name="location">
							<option>선택X</option>
							<option>서울</option>
							<option>부산</option>
							<option>대구</option>
							<option>광주</option>
							<option>대전</option>
						</select>
						
			        </div> 
			        
			        <h3>핸드폰 번호</h3>
			        <input type="phone">
			        
			    </fieldset>
		    </form>
			
		<!-- 	<form>
				<label>아이디를 입력해주세요</label>
				<input type ="text" size="8" name ="id">
				<input type="button" value="중복체크"> <br>
				
				<label> 비밀번호를 입력해주세요</label>
				<input type = "password" size="25" name ="password"> <br>
				
				<label>이메일을 입력해주세요</label>
				<input type = "email" size = "30" name ="email"> <br>
				
				<label>성별을 선택해주세요</label>
				<label>여자<input type="radio" name ="gender"></label>
				<label>남자<input type="radio" name="gender"></label> <br>
				
				<div class ="joindiv">
				
					<p>추가 정보</p>
					<label>지역</label>
					<select name="location">
						<option>서울</option>
						<option>부산</option>
						<option>대구</option>
						<option>광주</option>
						<option>대전</option>
					</select> <br>
					
					<label>관심사</label>
					<input type="text" size="30" id="interest" name ="interest" value="#">
					
				</div>
				<input type = "submit"> -->
		
	</body>
</html>