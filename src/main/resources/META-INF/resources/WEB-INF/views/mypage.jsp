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
      
      <!-- 마이페이지 css -->
	.MyPageBox {
    display: flex;  /* 가로 배치 */
    flex-direction: row;
    justify-content: space-between; /* 양쪽으로 균등 배치 */
    align-items: flex-start; /* 위쪽 정렬 */
    padding: 20px;  /* 전체 컨테이너 패딩 추가 */
    gap: 20px;  /* 컨테이너 간 간격 */
    width: 100%;
    flex-wrap: wrap; /* 요소가 넘칠 경우 줄바꿈 방지 */
    max-width: 1200px;
    margin: 0 auto;
     border: 2px red solid;
}

.MyProfileContainer, .MyStudyContainer {
    flex: 1; /* 동일한 비율로 차지 */
    flex-basis: 50%; /* 기본 너비를 50%로 설정 */
    min-width: 45%;
    border: 2px red solid;
    padding: 20px; /* 내부 여백 추가 */
}
      #MyprofileTitle{
      	font-size:20px;
      	font-weight:700;
      }
      
      .profile-content-box{
      	border:2px red solid;
        display: flex;
        flex-direction: column;
        padding: 10px;
      }
      
      .mainProfile{
        display: flex;
        gap:20px;
        border-bottom:2px rgb(214, 214, 414) solid;
      }
      
      #updateBtn{
       background-color: white;
       padding:2px 7px;
        border: 1px rgb(214, 214, 414) solid;
        border-radius : 5px;
      }
      
      .subProfile{
        display: flex;
        flex-direction: column;
      }
      
      .subProfile_content{
        display:flex;
      }
      
      .subProfile_content_label{
      
      width:20%;
      }
      
    .main-container {
    display: flex;
    flex-direction: column; /* 헤더와 컨텐츠가 세로 배치되도록 설정 */
    width: 100%;
    min-height: 100vh; /* 최소 높이를 화면 높이로 설정 */
}
    </style>

      
</head>
<body>
    <div class="main-container">  <!-- 메인 컨테이너 추가 -->
	    <!-- header 보여주기 -->
	 	<jsp:include page="page/header.jsp" />
	 

	    <!-- content 보여주기 -->
	 	<jsp:include page="page/mypage.jsp" />
 </div>
</body>
</html>

