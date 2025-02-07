<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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