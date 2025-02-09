<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#cancelBtn").on("click",function(event){
		event.preventDefault();
		// console.log("취소 버튼 클릭됨");
		$("#comments").val("");
	
	})
	
	
	
	
	
})
</script>
    
		<h1>댓글 개수 : </h1>
		${post}
   		<form class="commentsForm" action="CommentsAdd" method="post">
   			<input type="hidden" value="${post.studyid }" name ="studyid"/>
   			<input type="text" name="comments" id="comments" placeholder="${loginUserName}님, 댓글을 작성해보세요. " />
   			<button type="button" id="cancelBtn">취소</button>
   			<button type="submit">등록</button>
   		</form>



