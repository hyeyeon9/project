<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
	.Homecontainer{
		display : flex;
		height: 86vh;
	}
	
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
	

</style>
	


    <div class="Homecontainer">
		
 		 <jsp:include page="homeNav.jsp" flush="true" /> 
		
		<div class="home-contentsBox">
			
			<!-- 작성된 게시물 목록 -->
	        <jsp:include page="../study/studyPostList.jsp" flush="true" /> 
		
		</div>

	</div>

