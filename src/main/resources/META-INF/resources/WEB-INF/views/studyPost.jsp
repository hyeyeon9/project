<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>





<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');

	/* 배치 */
	.Homecontainer{
		border : 2px black;
		display : flex;
		 padding: 12px;
	}
	
	.home-contentsBox{
		border : 2px black;
		 padding: 50px;
	}
	
    </style>
</head>
<body>
 <div class="App">
	
	 <!-- header 보여주기 -->
	 <jsp:include page="page/header.jsp" />
	    
	    <div class="Homecontainer">
		
 		 <jsp:include page="page/homeNav.jsp" flush="true" /> 
		
		<div class="home-contentsBox">
			
			<!-- 모집글 작성하기 페이지 -->
	       <jsp:include page="study/studyPost.jsp" flush="true" /> 
		
		</div>

	</div>


 </div>
</body>
</html>

