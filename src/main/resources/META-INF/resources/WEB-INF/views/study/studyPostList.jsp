<%@page import="com.exam.dto.PostDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.exam.util.TimeUtil" %>
<%@ page import="java.sql.Timestamp" %>


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

	.home-contentsBox{
		padding : 40px 100px;
		/* background-color: #f5f6fa; */
		border-left : 2px #e9e9e9 solid;

	}
	
	/*
	#post-title{
		font-size:23px;
		font-weight:700;
		margin-bottom : 20px;
	}*/
	
	.category-nav {
	    display: flex;
	    gap: 20px;
	    margin-bottom: 25px;
	}

	.category-ul {
	    list-style: none;
	    display: flex;
	    gap: 25px;
	    padding: 0;
	}
	
	.category-nav-link {
	    font-size: 27px;
	    color: grey; /* 기본 회색 */
	    cursor: pointer;
	    font-weight: 600;
	    text-decoration: none;
	    padding-bottom: 5px;
	    transition: color 0.3s ease, border-bottom 0.3s ease;
	}
	
	.category-nav-link a {
    color: grey;
    text-decoration: none;
    transition: color 0.3s ease;
   }

	/* 활성화된 상태 - 검정색 */
	.category-nav-link.active a {
    	color: #000; /* 선택된 카테고리는 검정색 */
     	/* border-bottom: 3px solid #000; /* 선택된 항목 밑줄 */
	}
	

	
	.posts-box{
		display : flex;
		flex-direction:column;
		gap : 20px;
	}
	
	.posts-content-box{
		border : 2px #e9e9e9 solid;	
		padding : 15px 20px;
		border-radius:10px;
		backround-color:white;
		display:flex;
		flex-direction:column;
		gap: 10px;
		height : 200px;
		width:100%;
		background-color:white;
	}
	
	#post-profile{
		display:flex;
		gap:7px;
	    font-size:15px;
		font-weight:500;
		align-items:center;
	}
	
	#contents{
		display:flex;
		flex-direction:column;
		gap:10px;
		
		height : 100px;
	}
	
	#contents-title{
	    font-size:22px;
		font-weight:700;
		margin-bottom:3px;
	}
	
	#contents-des{
	 	font-size:15px;
		font-weight:500;
		padding-top:2px;
		 /* 줄 제한 및 생략 부호 설정 */
		 display: -webkit-box;
   		 -webkit-line-clamp: 2;	  /* 최대 2줄 */
   		 -webkit-box-orient: vertical;
   		 /* 잘린 부분에 생략 부호(…)*/
   	 	overflow: hidden;
    	text-overflow: ellipsis;
    	line-height: 1.5;
	}
	
	#post-category{
		background-color: white;
		color : grey;
		border : 1px #d3d3d3 solid;
		border-radius: 15px; 
		font-size:15px;
		font-weight:500;
		padding : 5px 10px;
		width: max-content;
	}
	
	#name-box{
		font-size:15px;
		width:25px;
		height:25px;
		border-radius:50%;
		color:white;
		display:flex;
		justify-content: center;
        align-items: center;
	
	}
	


</style>

<script>
	$(document).ready(function(){

	
	
	})

</script>


  <nav class="category-nav"> <!-- Http 요청 파라미터를 키-벨류 형식으로 저장하는 객체 => param 객체를 사용 -->
       <ul class="category-ul">
         <li class="category-nav-link ${empty param.category ? 'active' : ''}"><a href="home">전체</a></li>
       	 <li class="category-nav-link ${param.category == 'language' ? 'active' : ''}"><a  href="posts?category=language">어학</a></li>
       	 <li  class="category-nav-link ${param.category == 'development' ? 'active' : ''}"><a href="posts?category=development">개발</a></li>
    	 <li class="category-nav-link ${param.category == 'design' ? 'active' : ''}"><a  href="posts?category=design">디자인</a></li>
    	 <li class="category-nav-link ${param.category == 'interview' ? 'active' : ''}"><a  href="posts?category=interview">면접</a></li>
    	 <li class="category-nav-link ${param.category == 'reading' ? 'active' : ''}"><a  href="posts?category=reading">독서</a></li>
    	 <li class="category-nav-link ${param.category == 'others' ? 'active' : ''}"><a  href="posts?category=others">기타</a></li>
       </ul>
  
  </nav>     

	<div class="posts-box">
		   <!-- 카테고리별 필터된 posts 보여주기 -->
    	<c:forEach var="post" items="${posts }">
    	<% 
    			// post 변수는 c:forEach에 의해 페이지 컨텍스트에 설정됩니다.
    			PostDTO p = (PostDTO) pageContext.getAttribute("post");
				Timestamp createdAt = p.getCreatedAt();
				String timeAgo = TimeUtil.getRelativeTime(createdAt);
		%>
   
    
     		<a href="postRetrieve?studyid=${post.studyid }" >                      
				
				<div class="posts-content-box">
      				
      				 <div id="post-profile"> 
      				 			<div id="name-box"  style="background-color: ${mypage.bgColor}">
      				 				${post.username.substring(0,1)}
      				 			</div>
      				 
      				 			 <div>${post.username }</div> 
      				 			 <div><%= timeAgo %></div>
      				 			 
      				 			 </div>
      				 <div id="contents">
      					 <div id="contents-title">${post.title }</div>
       				     <div id="contents-des">${post.description }</div>
       				 </div>
       				 <span id="post-category">
       				 	   	<c:choose>
        		<c:when test="${post.category == 'language' }"> 📜 어학 </c:when>
        		<c:when test="${post.category == 'development'}"> 💻 개발 </c:when>
  		        <c:when test="${post.category == 'design'}"> 💡 디자인</c:when>
     		    <c:when test="${post.category == 'interview'}"> 👨‍💼 면접 </c:when>
     		    <c:when test="${post.category == 'reading'}"> 📖 독서</c:when>
     		    <c:when test="${post.category == 'others'}"> 🔍 기타</c:when>
     		    <c:otherwise>기타</c:otherwise>
        	</c:choose>
       				 
       				 
       				 
       				 </span>

				</div>
 			</a>    
   		</c:forEach>  
	</div>



