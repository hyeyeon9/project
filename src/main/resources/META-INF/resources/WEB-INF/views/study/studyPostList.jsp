<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
	.home-contentsBox{
		padding : 40px 70px;
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
     		<a href="postRetrieve?studyid=${post.studyid }">                      
				<div>
      				 <div> 글 번호: ${post.studyid }</div>
      				 <div> 제목: ${post.title }</div>
      				 <div> 카테고리 : ${post.category}</div>
       				<div> 내용: ${post.description }</div>

				</div>
 			</a>    
   		</c:forEach>  
	</div>



