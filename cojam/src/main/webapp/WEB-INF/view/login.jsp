<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  		
  		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
  		
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
		
		
	</head>
	
	<body>

<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
 
<div id="kakao_btn_changed">
<a href="javascript:loginWithKakao()">
<img src="" /></a>
</div>
 
 
<script>
var namelee=localStorage.getItem("key1");
console.log(localStorage.getItem("key1"));
console.log(namelee);
//document.getElementById("test1").innerHTML=namelee;

// 로그인 및 로그아웃 버튼 생성 처리
var cookiedata = document.cookie;
if(cookiedata.indexOf('kakao_login=done') < 0){
    createLoginKakao();
}else{
    createLogoutKakao();
}
 
/* 로그인 관련 쿠키 생성 및 삭제 */
function setCookie( name , value , expired ){
 
 var date = new Date();
 date.setHours(date.getHours() + expired);
 var expried_set = "expries="+date.toGMTString();
 document.cookie = name + "=" + value + "; path=/;" + expried_set + ";"
 
}
 

function getCookie(name){

    var nameofCookie = name + "=";
    var x = 0;
    while(x <= document.cookie.length){
        var y = ( x + nameofCookie.length);
        if(document.cookie.substring(x,y) == nameofCookie){
            if((endofCookie = document.cookie.indexOf(";",y)) == -1)
                endofCookie = document.cookie.length;
            return unescape(document.cookie.substring(y,endofCookie));
        }
        x = document.cookie.indexOf(" ",x) + 1;
        if( x == 0 )
            break;
        }
        
        return "";
}
 
// 카카오 script key 입력
Kakao.init('f97d93c0c9455c750f465c1049841311');
 
 // 로그인 처리
function loginWithKakao(){
    
    Kakao.Auth.cleanup();
    Kakao.Auth.loginForm({
        persistAccessToken: true,
        persistRefreshToken: true,
        success: function(authObj) {
        	Kakao.API.request({
        		url:'/v1/user/me',
        		success: function(res){
		            setCookie("kakao_login","done",1); // 쿠키생성 (로그인)
		            console.log(JSON.stringify(res));
		            createLogoutKakao();
		            //window.location.href="../login.com";
		            localStorage.setItem("key1", res.properties.nickname); 
		            //localStorage.key1=res.properties.nickname;
		            console.log(res.properties.nickname);
		            console.log(localStorage.getItem("key1"));
   
        },
        fail: function(error){
        	alert(JSON.stringify(error));
        }
        });
        },
            fail: function(err) {
             alert(JSON.stringify(err));
        }
                 
    });
}
 
// 로그아웃 처리
function logoutWithKakao(){
    Kakao.Auth.logout();
    alert('카카오 로그아웃 완료!');
    setCookie("kakao_login","",-1);  // 쿠키삭제 (로그아웃)
    createLoginKakao();
    //window.location.href="../login.com";
    localStorage.removeItem("key1");
}
 
// 로그인 버튼생성
function createLoginKakao(){
 var login_btn = "<a href='javascript:loginWithKakao()'>"+
                "<img src='https://developers.kakao.com/assets/img/about/logos/login/en/kakao_account_login_btn_medium_narrow_ov.png'/>"+
                "<a/>";
 document.getElementById('kakao_btn_changed').innerHTML  = login_btn;
}
 
// 로그아웃 버튼생성
function createLogoutKakao(){
 var logout_btn = "<a href='javascript:logoutWithKakao()'>"+
                "<img src='https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium_ov.png'/>"+
                "</a>";
 document.getElementById('kakao_btn_changed').innerHTML  = logout_btn;
 
}
 
// document.getElementById("test1").textContent=userNick;
 $(function(){
 document.getElementById("test1").innerText=localStorage.key1;
 });
</script>

		<div id="test1">
		로그인을 하시오
		</div>
		
		
	</body>
</html>