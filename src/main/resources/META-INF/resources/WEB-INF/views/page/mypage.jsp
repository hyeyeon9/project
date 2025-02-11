<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
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
 background-color: #f8f9fa;
    flex: 1; /* 동일한 비율로 차지 */
    flex-basis: 50%; /* 기본 너비를 50%로 설정 */
    min-width: 45%;
    padding: 70px; /* 내부 여백 추가 */
}

.MyProfileContainer{
	padding-top:30px;
}
      
      #MyprofileTitle{
      	font-size:20px;
      	font-weight:700;
      }
      
      .profile-content-box{
	   background-color: white !important;
        display: flex;
        flex-direction: column;
        padding: 10px;
        margin-top : 20px;
        padding : 10px;
        height : 220px;
      }
      
      .mainProfile{
      height : 100px;
        display: flex;
        gap:20px;
        border-bottom:2px rgb(214, 214, 414) solid;
        margin-bottom : 20px;
        padding : 10px;
        align-items: center;
        font-size: 18px;
      }
      
      #updateBtn{
        background-color: white;
        color : sandybrown;
        padding:4px 13px;
		border: 2px sandybrown solid;
        border-radius : 5px;
       
        cursor:pointer;
        margin-left : 220px;
        font-size: 17px;
        transition : all linear 0.1s;
      }
      
       #updateBtn:hover{
       	 font-weight:700;
       }
      
      .subProfile{
        display: flex;
        flex-direction: column;
        gap : 7px;
        padding : 10px;
      }
      
      .subProfile_content{
        	font-size : 16px;
        display:flex;
      }
      
      .subProfile_content_label{
  
      	color : grey;
      	font-weight :700;
        width:20%;
      }
     
     
     #name-box{
		font-size:30px;
		width:70px;
		height:70px;
		border-radius:50%;
		color:black;
		font-weight:700;
		display:flex;
		justify-content: center;
        align-items: center;
		
	
	} 
	
	.mypage-userData{
		display:flex;
		flex-direction:column;
		gap:10px;
	
	}
	
	#userid{
	margin-top:6px;
		font-size : 15px;
	}
	
	#username{
		font-weight : 700;
	}
      
      /* 배치 */
      .Homecontainer{
		display : flex;
		height : 86vh;
	}
	
	.home-contentsBox{
	display : flex;
	}
	
	.MyProfileContainer{
	width : 50%;
	}
	
	.myScrap-box {
    background-color: #f8f9fa;
    padding: 20px;
    width: 50%;
    display: flex;
    flex-direction: column;
    gap: 15px;
    padding-top:30px;
    
}

#scrap-title {
	
    font-size: 20px;
    font-weight: bold;
    color: #333;
    margin-bottom: 10px;
}

	.scrapPost-container{
		 background: white;
		 padding : 3px;
		  border-radius: 8px;
	
	}

.scrapPost-content-box {
    background: white;
    padding: 15px;
    display: flex;
    flex-direction: column;
    gap: 5px;
    height :170px;
    border-bottom : 1px solid black;
    margin-bottom : 5px;
}

.scrapPost-content-box:last-child{
	
	border: none;
}


#scrap-contents {
    display: flex;
    flex-direction: column;
}

#scrap-contents-title {
    font-size: 18px;
    font-weight: bold;
    color: #222;
    margin-bottom : 10px;
}

#scrap-contents-des {
    font-size: 14px;
    color: #555;
     /* 줄 제한 및 생략 부호 설정 */
		 display: -webkit-box;
   		 -webkit-line-clamp: 3;	  /* 최대 2줄 */
   		 -webkit-box-orient: vertical;
   		 /* 잘린 부분에 생략 부호(…)*/
   	 	overflow: hidden;
    	text-overflow: ellipsis;
    	line-height: 1.5;
    	height :60px;
}

#scrap-post-category {
    font-size: 14px;
    background: #ddd;
    padding: 5px 10px;
    border-radius: 5px;
    display: inline-block;
    margin-top: 8px;
    color: #333;
     width : min-content;
}
	

    </style>
 
 

  <div class="Homecontainer">
		
 		 
 	 <jsp:include page="homeNav.jsp" flush="true" /> 
		
	 <div class="home-contentsBox">
			
 	
		 <div class ="MyProfileContainer">
			
			<span id="MyprofileTitle">내 프로필</span>
			
			<div class="profile-content-box">
				<div class="mainProfile">
					<div id="name-box" style="background-color: ${mypage.bgColor}">
      				 				${fn:substring(mypage.username, 0, 1) }
      				 			</div>
					<div clsss="mypage-userData">
						<div id="username">${mypage.username}</div>
						<div id="userid">${mypage.userid}</div>
					</div>
					<button id="updateBtn"> 🖍 수정 </button>
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

				</div>

			 </div>
  		</div>
  		
  <div class="myScrap-box">
    <h1 id="scrap-title">내 스크랩</h1>
    <div class="scrapPost-container">
     <c:forEach var="scrapPost" items="${scrappedPosts}">
       <!-- 또는 원하는 필드를 출력: ${scrapPost.title} 등    ${scrapPost} -->
        
        
        	<div class="scrapPost-content-box">
      				
      			 <div id="scrap-contents">
      				 <div id="scrap-contents-title">${scrapPost.title }</div>
       				 <div id="scrap-contents-des">${scrapPost.description }</div>
       		     </div>
       		     <span id="scrap-post-category"> ${scrapPost.category}</span>

		   </div>
          </c:forEach>
        </div>
   
</div>
		
   </div>

</div>
  
 