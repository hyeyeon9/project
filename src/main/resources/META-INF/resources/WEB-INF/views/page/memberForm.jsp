<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      a {
        text-decoration: none;
        outline: none;
        color: black;
      }

	      /* 회원가입 폼*/
      .container {
        width: 100vw;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
      }
      
       .SignUp {
       /* border: 2px rgba(0, 0, 0, 0.122) solid;*/
        width: 30%;
        height: 80%;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding-top: 2%;
        border-radius: 5px;
        margin-top:-80px;
      }
      
      .signUpFormTitle {
        font-size: 30px;
        margin-bottom: 30px;
      }

      .signUpForm {
        display: flex;
        flex-direction: column;
        align-items: center;
        font-size: 15px;
        width: 100%;
        height: 100%;
        padding-top: 3%;
      }

      .signup-div {
      	margin-bottom:10px;
        width: 88%;
        padding: 0px 10px;
      }

      .signupInput {
        margin-top: 10px;
        padding: 13px 15px;
        width: 100%;
        font-size: 20px;
         border-radius: 5px;
       border: 2px rgba(205, 205, 205, 0.695) solid;
      }

      .signupBtn {
        background-color:#F85253;
        border: none;
        color: white;
        padding: 15px 80px;
        font-size: 20px;
        margin-top: 15px;
        border-radius: 10px;
        width: 80%;
      }
      
      .btn-div{
      	width:100%;
      	margin-left:93px;
      }
      
      .label{
        font-weight: 700;
      }
      
      #idDupulicatedcheck{
      	border:none;
      	padding:2px;
      	background-color:white;
      	margin-top:5px;
      }
      
      #idcheck{
    display:inline-block;
        margin-top : 5px;
      	color:red;
      }
      
       #pwdcheck{
        color:red;
 		display:inline-block;
        margin-top : 5px;
      }
      

      
      #homeBtn{
         position: absolute;
         top:4.7%;
         left:10%;
         font-size:23px;
      
      }


</style>
  
  
<script>
$(document).ready(function(){
	
	console.log("hello");
	
	/* 중복 아이디 확인 */
	$("#userid").on("keyup", function(event){
		event.preventDefault(); //새로고침 막기
		
		var userid=$("#userid").val();
		
		// 아이디 입력 여부
		if(userid.trim() === ""){
			$("#idcheck").text("아이디를 입력하세요.");
			return;
		}
		
		// ajax 요청하기  => security를 사용하기 때문에 filterConfig에 idcheck를 넣어줘야 한다.
		$.ajax({
			url:"idcheck",
			method:"get",
			dataType:'text',
			data : {
				userid : $("#userid").val()
			}, // 서버에 전달
			success:function(responseText,status , xhr){
				 console.log(responseText, status);
				 $("#idcheck").text(responseText);
				 if (responseText.indexOf("중복") !== -1) {
				      $("#idcheck").css("color", "red");
				    } else {
				      $("#idcheck").css("color", "blue");
				    }
			},
			error: function(xhr, status, error) {
                console.log("에러 발생:", error);
            }
		});
		
	});
	
	
	
	/* 비밀번호 일치 확인 */
	$("#password2").on("keyup", function(){
		
		var pw = $("#password").val();
		var pw2 = $("#password2").val();
		
		if (pw !== pw2) {
		    $("#pwdcheck").text("비밀번호가 다릅니다.").css("color", "red");
		  } else {
		    $("#pwdcheck").text("비밀번호가 일치합니다.").css("color", "blue");
		  }
		
	})
	
	
});
</script>

   <a href="home" id="homeBtn">HOME</a>
    <div class="container">

            <div class="SignUp">
            <h1 class="signUpFormTitle">회원가입</h1>
  
              <form:form  class="signUpForm" method="post" modelAttribute="mem" 
              action="signup">
                <div class="signup-div">
                    <label for="userid" class="label">아이디</label> 
                    <form:input type="text" path="userid" class="signupInput" id="userid"/>
                 <!--  <button id="idDupulicatedcheck">아이디 중복체크</button> --> 	
                  	<span id="idcheck"></span>
          
                </div>
             
              
               
                <div class="signup-div">
                    <label for="password" class="label">비밀번호</label>
                    <form:input type="password" path="passwd" value="" class="signupInput" id="password"/>
  				
                </div>
                
                <div class="signup-div">
                    <label for="password2" class="label">비밀번호 확인</label>  <br> 	
                    <input class="signupInput" type="password" name="password2" id="password2"  value=""/>
                    <span id="pwdcheck"></span>
                </div>
    	
                 <div class="signup-div">
                    <label for="username" class="label">닉네임</label><br>
                    <form:input type="text" path="username" class="signupInput"/>
                </div>
                
                <div class="btn-div">
                    <button name="login" class="signupBtn" >가입하기</button>
                </div>
               </form:form> 
        </div>
        </div>
