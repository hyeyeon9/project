<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <style>
 
 @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    
      body {
            font-family: 'IBM Plex Sans KR', sans-serif;
        }
        
      h2 {
            font-family: 'IBM Plex Sans KR', sans-serif;
        }
        
      label, input, textarea {
            font-family: 'IBM Plex Sans KR', sans-serif;
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
 <div class="container">
      <div class="Login">
        <h1 class="loginFormTitle">로그인</h1>
        <form class="LoginForm" action="auth" method="post">
          <div class="input-div">
            <label for="userid" class="label">아이디</label> <br />
            <input
              class="loginInput"
              type="text"
              name="userid"
              placeholder="아이디를 입력하세요."
            />
          </div>
          <div class="input-div">
            <label for="passwd" class="label">비밀번호</label> <br />
            <input
              class="loginInput"
              type="password"
              name="passwd"
              placeholder="비밀번호를 입력하세요"
            />
          </div>

          <button name="login" class="loginBtn">로그인</button>
        </form>
      </div>
    </div>