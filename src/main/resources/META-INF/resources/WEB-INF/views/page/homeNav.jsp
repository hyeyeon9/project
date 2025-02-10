<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 <style>
 	.home-nav{
		border : 2px yellow solid;
		flex : 0 0 180px;  /* flex-grow(얼마나 확장할지), flex-shrink(얼마나 축소할지), flex-basis(기본크기) */
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
	
	.home-nav-li a {
  		display: block;
 		 width: 100%;
 		 height: 100%;
	}
	
	.home-nav-li:hover{
		 background-color: antiquewhite;
		 
	}
	
    .home-nav-li.active {
		 background-color: antiquewhite;

		 
	}
	
	.home-nav-li:last-child{
		margin-top:25px;
	}
 
 
 </style>
		<nav class="home-nav">
			<ul class="home-nav-ul">
				<li class="home-nav-li"> <a href="home"> 홈 </a> </li>
				<li  class="home-nav-li"><a href="post"> 모집 만들기 </a></li>
				<li  class="home-nav-li"> <a href = "mypage"> 마이페이지 </a></li>
			</ul>
		</nav>
 
 
 