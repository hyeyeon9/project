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
</head>
<body>
      <div class="App">
	    <!-- header 보여주기 -->
	 	<jsp:include page="page/header.jsp" />
	 
	    <!-- content 보여주기 -->
	 	<jsp:include page="page/home.jsp" />
	 	
	     <div><a href="post">글 작성하기</a></div>
	     
	     <!-- 작성된 게시물 목록 -->
	     <jsp:include page="study/studyPostList.jsp" flush="true" /> 
	   </div>
</body>
</html>

