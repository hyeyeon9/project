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
</head>
<body>

	
	<h2>게시물 수정</h2>
	<form action="update" method="post">
		<input type="hidden" name="studyid" value="${post.studyid }">
	    
	    <label>제목:</label>
		<input type="text" name="title" value="${post.title}" required><br>
		
		<label>내용:</label>
        <textarea name="description" required>${post.description}</textarea><br>
        
        <button type="submit">수정 저장</button>
        <a href="postRetrieve?studyid=${post.studyid}">취소</a>
	</form>

</body>
</html>

