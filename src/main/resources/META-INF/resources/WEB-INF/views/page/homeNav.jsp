<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 <script>
	
	$(document).ready(function(){

			
	})

</script>
 <style>
 	.home-nav{
		flex : 0 0 200px;  /* flex-grow(얼마나 확장할지), flex-shrink(얼마나 축소할지), flex-basis(기본크기) */
		padding : 25px 10px;
	}
	
	.home-contentsBox{
		flex : 1; /* flex : 1(남은 공간을 모두 사용하여 확장) 1 0;*/
		overflow-y: auto;  /* 수직 스크롤 활성화 */
	}
	
	.home-nav-ul{
		display:flex;
		flex-direction:column;
		gap : 3px;
	}
	
	.home-nav-li{
		padding : 8px 10px;
		font-size : 17px;
		font-weight :500;
		border-radius:9px;
		cursor: pointer;
	    transition: all linear 0.1s;
	}
	

	.home-nav-li:hover{
		 background-color: antiquewhite;
		 
	}
	
	.home-nav-li.active a {
    background-color: antiquewhite;
	}
	
    .home-nav-li.active {
		 background-color: antiquewhite; 
	}
	
	.home-nav-li:last-child{
		margin-top:25px;
	}
	
	.home-nav-li a {
    display: block;
    width: 100%;
    height: 100%;
}
	
 
 
 </style>
 
 <c:choose>
  <c:when test="${not empty requestScope['javax.servlet.forward.request_uri']}">
    <c:set var="currentUri" value="${requestScope['javax.servlet.forward.request_uri']}" />
  </c:when>
  <c:otherwise>
    <c:set var="currentUri" value="${pageContext.request.requestURI}" />
  </c:otherwise>
</c:choose>
 
		<nav class="home-nav">

		<c:set var="shortUri" value="${fn:substringBefore(fn:substringAfter(currentUri, '/WEB-INF/views/'), '.jsp')}" />
 			<!--  현재 페이지: <c:out value="${shortUri}" /> -->
			<ul class="home-nav-ul">
			  <li class="home-nav-li ${shortUri eq 'home'? 'active' : '' }">
			    <a href="home">홈</a>
			  </li>
			  <li class="home-nav-li  ${shortUri eq 'studyPost'? 'active' : '' }">
			    <a href="post">모집 만들기</a>
			  </li>
			  <li class="home-nav-li  ${shortUri eq 'mypage'? 'active' : '' }">
			    <a href="mypage">마이페이지</a>
			  </li>
			</ul>
						
		</nav>
 
 
 