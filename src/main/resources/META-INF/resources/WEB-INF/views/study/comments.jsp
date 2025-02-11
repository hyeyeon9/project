<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    
		<h1>댓글 개수: <span>${commentCount }</span></h1>
		<div class="comment-form-container">
   		<form class="commentsForm" action="CommentsAdd" method="post">
   			<input type="hidden" value="${post.studyid }" name ="studyid"/>
   			<input type="text" name="comments" id="comments" placeholder="${loginUserName}님, 댓글을 작성해보세요. " />
   			<button type="button" id="cancelBtn">취소</button>
   			<button type="submit">등록</button>
   		</form>
  	 </div>
    

    <h3>댓글</h3>
    ${comments }
    <div class="comment-section">
        <c:forEach var="comment" items="${comments}">
            <div class="comment">
                <div class="comment-author">${comment.userid}</div>
                <div class="comment-content">${comment.comments}</div>
                <div class="comment-timestamp">${comment.created_at}</div>
                <c:if test="${loginUserId eq comment.userid}">
                    <form action="deleteComment" method="post">
                        <input type="hidden" name="commentId" value="${comment.commentsid}" />
                        <input type="hidden" name="studyid" value="${post.studyid}" />
                        <button type="submit" class="delete-btn">삭제</button>
                    </form>
                </c:if>
            </div>
        </c:forEach>
    </div>





