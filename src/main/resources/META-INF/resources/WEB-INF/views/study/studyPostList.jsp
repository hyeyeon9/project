<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
     

    </style>
    	
    
    </script>
</head>
<body>
    
 
<div>
 <nav class="category-nav">
       <ul class="category-ul">
       	  <li><a class="category-nav-link" href="posts?category=language">외국어</a></li>
       	  <li><a class="category-nav-link" href="posts?category=development">개발</a></li>
    	  <li><a class="category-nav-link" href="posts?category=design">디자인</a></li>
    	   <li><a class="category-nav-link" href="posts?category=interview">면접</a></li>
    	  <li><a class="category-nav-link" href="posts?category=reading">독서</a></li>
       </ul>
  
  </nav>     

   
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

</body>
</html>

