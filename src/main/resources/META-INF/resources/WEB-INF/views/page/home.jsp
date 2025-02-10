<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
	.Homecontainer{
		border : 2px red solid;
		display : flex;
		height: 86vh;
	}
	
	.home-contentsBox{
		border : 2px blue solid;
	}
	
	

</style>
	
	
<script>
	
	$(document).ready(function(){
			// 메뉴 선택한 것만 색상 체인지
			$(".home-nav-li").on("click", function(event){
				$(".home-nav-li").removeClass("active"); // 모든 active 클래스 제거 후
			    $(this).addClass("active"); // 선택한 li에 active 추가하기
			});
			
			
	})

</script>

    <div class="Homecontainer">
		
 		 <jsp:include page="homeNav.jsp" flush="true" /> 
		
		<div class="home-contentsBox">
			
			<!-- 작성된 게시물 목록 -->
	        <jsp:include page="../study/studyPostList.jsp" flush="true" /> 
		
		</div>

	</div>

