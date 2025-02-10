<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
 <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
 <style>
 	<style>

      
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
 
}

.MyProfileContainer, .MyStudyContainer {
    flex: 1; /* 동일한 비율로 차지 */
    flex-basis: 50%; /* 기본 너비를 50%로 설정 */
    min-width: 45%;

    padding: 20px; /* 내부 여백 추가 */
}
      
      #MyprofileTitle{
      	font-size:20px;
      	font-weight:700;
      }
      
      .profile-content-box{

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
      
      
      /* 배치 */
      .Homecontainer{
		border : 2px red solid;
		display : flex;
	}
	
	.home-contentsBox{
		border : 2px blue solid;
	}

    </style>
 
 
 
 </style> 
  <div class="Homecontainer">
		
 		 
 	 <jsp:include page="homeNav.jsp" flush="true" /> 
		
	 <div class="home-contentsBox">
			
 	
		 <div class ="MyProfileContainer">
			
			<span id="MyprofileTitle">내 프로필</span>
			
			<div class="profile-content-box">
				<div class="mainProfile">
					<img alt="#"/>
					<div>
						${mypage.username}
					</div>
					<button id="updateBtn"> 수정 </button>
			     </div>
		
				<div class="subProfile">
					<div class="subProfile_content">
						<div class ="subProfile_content_label">닉네임</div>
						<div>${mypage.username}</div>
					</div>
					<div class="subProfile_content">
						<div class ="subProfile_content_label">아이디</div>
						<div>${mypage.userid}</div>
					</div>
					<div class="subProfile_content">
						<div class ="subProfile_content_label">관심목록</div>
						<div>${mypage.userid}</div>
					</div>
				</div>

			 </div>
  		</div>
		
   </div>

</div>
  
 