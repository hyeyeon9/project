<%@page import="com.exam.dto.PostDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.exam.util.TimeUtil" %>
<%@ page import="java.sql.Timestamp" %>


<style>
	.home-contentsBox{
		padding : 40px 100px;
		background-color: #f5f6fa;

	}
	
	#post-title{
		font-size:23px;
		font-weight:700;
		margin-bottom : 20px;
	}
	
	.category-nav{
		padding : 10px;
		margin-bottom : 20px;
	}
	
	.category-ul > li{
	 font-size : 18px;
	 font-weight:500;
	 padding: 7px 18px;
	 background-color: #f0f0f0; 
	 border-radius: 10px; 
	 transition : all linear 0.1s;
	
	}
	
	.category-ul > li:hover{
		background-color: #e0e0e0;
		cursor:pointer;
	}
	
	.category-nav-link.active{
		background-color: #e0e0e0;
	}
	
	.posts-box{
		display : flex;
		flex-direction:column;
		gap : 10px;
	}
	
	.posts-content-box{
		border : 2px #e0e0e0 solid;	
		padding : 12px 10px;
		border-radius:10px;
		backround-color:white;
		display:flex;
		flex-direction:column;
		gap: 10px;
		height : 210px;
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
	    font-size:20px;
		font-weight:700;
		margin-bottom:5px;
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
		margin-top:5px;
		background-color: #e0e0e0;
		border-radius: 10px; 
		font-size:15px;
		font-weight:700;
		padding : 5px 10px;
		width: min-content;
		
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

   	<div id="post-title"> 스터디 찾기 </div>

  <nav class="category-nav"> <!-- Http 요청 파라미터를 키-벨류 형식으로 저장하는 객체 => param 객체를 사용 -->
       <ul class="category-ul">
       	  <li class="category-nav-link ${param.category == 'language' ? 'active' : ''}"><a  href="posts?category=language">어학</a></li>
       	  <li  class="category-nav-link ${param.category == 'development' ? 'active' : ''}"><a href="posts?category=development">개발</a></li>
    	  <li class="category-nav-link ${param.category == 'design' ? 'active' : ''}"><a  href="posts?category=design">디자인</a></li>
    	   <li class="category-nav-link ${param.category == 'interview' ? 'active' : ''}"><a  href="posts?category=interview">면접</a></li>
    	  <li class="category-nav-link ${param.category == 'reading' ? 'active' : ''}"><a  href="posts?category=reading">독서</a></li>
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
      				 				${fn:substring(loginUserName, 0, 1) }
      				 			</div>
      				 
      				 			 <div>${loginUserName }</div> 
      				 			 <div><%= timeAgo %></div>
      				 			 
      				 			 </div>
      				 <div id="contents">
      					 <div id="contents-title">${post.title }</div>
       				     <div id="contents-des">${post.description }</div>
       				 </div>
       				 <span id="post-category"> ${post.category}</span>

				</div>
 			</a>    
   		</c:forEach>  
	</div>



