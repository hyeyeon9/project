<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#cancelBtn").on("click",function(event){
        event.preventDefault();
        $("#comments").val("");
    });

    $("#comments").on("focus", function() {
        $(this).parent().addClass("focused");
    }).on("blur", function() {
        $(this).parent().removeClass("focused");
    });
});
</script>

<style>
/* 전체적인 스타일 */
body {
    font-family: 'Pretendard', -apple-system, BlinkMacSystemFont, system-ui, Roboto, sans-serif;
    background-color: white;
    color: #333;
    line-height: 1.6;
    margin: 0;
    overflow-x: hidden; /* 가로 스크롤 방지 */
}

/* 중앙 정렬을 위한 컨테이너 */
.container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start; /* 수정: 수직 정렬을 위쪽으로 */
    padding: 30px;
    width: 100%;
}
h3 {
    font-size: 1.3rem;
    color: #495057;
    margin: 32px 0 16px;
    text-align: left;  /* 텍스트 왼쪽 정렬 */
    position: relative;
    left: -300px; /* 왼쪽으로 더 이동 */
    /* 상위 부모 요소의 영향이 없도록 설정 */
    display: inline-block;  /* 기본 블록 요소를 인라인 블록 요소로 변경 */
}

.comment-count-container {
    display: inline-flex;
    align-items: center;
    padding: 8px 16px;
    color: white;
    font-weight: 600;
    font-size: 1.1rem;
    margin-bottom: 24px;
    box-shadow: none; /* 테두리 없앰 */
   
}

.comment-count-container span {
    margin-left: 4px;
    color: #888;
}


/* 댓글 작성 폼 */
.comment-form-container {
    background-color: white;
    border-radius: 16px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0);
    padding: 32px;
    margin-bottom: 32px;
    width: 300%; /* 가로 두 배 넓히기 */
    transform: translateX(0%);
    box-sizing: border-box;
}

.commentsForm {
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 16px;
}

input[type="text"] {
    width: 100%;
    padding: 16px;
    border: 1px solid #e9ecef;
    border-radius: 12px;
    font-size: 1rem;
    background-color: #f8f9fa;
    box-sizing: border-box;
}

input[type="text"]:focus {
    outline: none;
    border-color: #000;
    background-color: #fff;
}

.button-group {
    display: flex;
    gap: 12px;
    justify-content: flex-end;
}

button {
    padding: 12px 24px;
    border: none;
    border-radius: 12px;
    font-weight: 600;
    font-size: 0.95rem;
    cursor: pointer;
}

button[type="submit"], #cancelBtn {
    background-color: #000;
    color: #fff;
    min-width: 120px;
}

button[type="submit"]:hover, #cancelBtn:hover {
    background-color: #333;
}

/* 댓글 섹션 */
h3 {
    font-size: 1.3rem;
    color: #495057;
    margin: 32px 0 16px;
    align-self: flex-start;
    
}

.comment-section {
    background-color: #fff;
    border-radius: 16px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    width: 300%;
    /* max-width 제거: 크기를 줄이지 않음 */
    box-sizing: border-box;
}

.comment {
    padding: 32px;
    border-bottom: 1px solid #f1f3f5;
}

.comment:last-child {
    border-bottom: none;
}

.comment-author {
    font-weight: 600;
    color: #495057;
    margin-bottom: 8px;
}

.comment-content {
    color: #495057;
    font-size: 1rem;
    margin-bottom: 12px;
    line-height: 1.6;
}

.comment-timestamp {
    font-size: 0.875rem;
    color: #868e96;
}

.delete-btn {
    background-color: #000;
    color: #fff;
    padding: 8px 16px;
    font-size: 0.875rem;
    border-radius: 8px;
    position: absolute;   /* 부모 요소에 대해 절대 위치 지정 */
    right: 0;  /* 오른쪽 끝으로 이동 */
    top: 80%;  /* 세로 중앙 정렬 */
    transform: translateY(-50%);  /* 정확한 세로 중앙 정렬을 위해 */
}

.comment {
    position: relative;  /* 삭제 버튼이 부모 요소를 기준으로 위치를 잡을 수 있도록 */
    padding: 32px;
    border-bottom: 1px solid #f1f3f5;
}

.delete-btn:hover {
    background-color: #333;
}

/* 반응형 디자인 */
@media (max-width: 768px) {
    .comment-form-container,
    .comment-section {
        padding: 16px;
    }

    .comment {
        padding: 16px;
    }
}
</style>

<div class="container">
    <div class="comment-form-container">
        <!-- 댓글 개수를 왼쪽 상단에 배치 -->
        <div class="comment-count-container-left">댓글 <span>${commentCount}</span></div>
        
        <form class="commentsForm" action="CommentsAdd" method="post">
            <input type="hidden" value="${post.studyid}" name="studyid"/>
            <input type="text" name="comments" id="comments" placeholder="${loginUserName}님, 댓글을 작성해보세요." />
            <div class="button-group">
               
                <button type="submit">등록</button>
            </div>
        </form>
    </div>

    <h3>댓글</h3>

    <div class="comment-section">
        <c:forEach var="comment" items="${comments}">
            <div class="comment">
                <div class="comment-author">${loginUserName}</div>
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
</div>