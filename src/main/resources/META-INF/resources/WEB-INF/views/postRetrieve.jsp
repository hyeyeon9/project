<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<jsp:include page="page/header.jsp" />
	
	<div class="RetrieveContainer">
	 <jsp:include page="study/postRetrieve.jsp" flush="true" /> 
	</div>
	
	<div class="CommentsContainer">
	<jsp:include page="study/comments.jsp" flush="true" /> 
	</div>

</body>
</html>

