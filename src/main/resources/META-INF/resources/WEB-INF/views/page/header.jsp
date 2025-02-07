<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 
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
 
 
 