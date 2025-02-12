<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
        width: 100%;
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
 
 </style>
 
    <header>
      <nav>
        <ul>
          <li><a href="home" id="home">HOME</a></li>
           <!--  인증안된 화면 -->
          <sec:authorize access="isAnonymous()"> 
          	    <li class="right"><a href="login" id="nav_a">로그인</a></li>
          		<li><a href="signup" id="nav_a">회원가입</a></li>     
          </sec:authorize>
          
           <!--  인증된 화면 -->
          <sec:authorize access="isAuthenticated()"> 
          	    <li class="right" ><a href="mypage" id="nav_a">마이페이지</a></li>
          		<li><a href="logout" id="nav_a">로그아웃</a></li>     
          </sec:authorize>
        </ul>
      </nav>
    </header>
 
 
 