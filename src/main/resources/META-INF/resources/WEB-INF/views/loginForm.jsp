<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
      /* main.css */
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      ul {
        list-style: none;
      }

      a {
        text-decoration: none;
        outline: none;
        color: black;
      }

      header {
        width: 100vw;
        height: 100px;
        display: flex;
        /* border: 2px red solid; */
        border-bottom: 2px rgb(231, 231, 231) solid;
        padding: 0 10%;
        align-items: center;
      }

      nav {
        width: 100%;
      }

      nav > ul {
        display: flex;
        gap: 30px;
        font-size: 23px;
      }

      .right {
        margin-left: auto;
      }
      
     #nav_a{
      color:#7D7A7F;
      }
      
      #nav_a:hover{
      color:black;
      transition:all 0.1s linear;
      }
      
      /* 로그인폼 css */
      .container {
        width: 100vw;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
      }

      .Login {
  
        width: 33%;
        height: 70%;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding-top: 2%;
        border-radius: 5px;
        margin-top:-120px;
      }

      .loginFormTitle {
        font-size: 30px;
        margin-bottom: 20px;
      }

      .LoginForm {
        display: flex;
        flex-direction: column;
        align-items: center;
        font-size: 18px;
        width: 100%;
        height: 100%;
        padding-top: 3%;
      }

      .input-div {
        width: 88%;
        padding: 10px 20px;
      }

      .loginInput {
        margin-top: 10px;
        padding: 17px 15px;
        width: 100%;
        font-size: 15px;
        border-radius: 5px;
       border: 2px rgba(205, 205, 205, 0.695) solid;
      }

      .loginBtn {
        background-color: #F85253;
        border: none;
        color: white;
        padding: 15px 80px;
        font-size: 20px;
        margin-top: 15px;
        border-radius: 10px;
        width: 80%;
      }
      
      .label{
      font-weight:700;
      }
    </style>
</head>
<body>
      <div class="App">
	    <!-- header 보여주기 -->
	 	<jsp:include page="page/header.jsp" />
	 
	    <!-- content 보여주기 -->
	 	<jsp:include page="page/loginForm.jsp" />
	   </div>
</body>
</html>


