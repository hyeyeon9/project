<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

.comment-count-container-left {
    position: relative;
    top: -15px; /* 적당한 값을 지정하여 위로 이동 */
}

/* 댓글 작성 폼 */
.comment-form-container {
    background-color: white;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0);
    padding: 0px 50px;
    margin-bottom: 30px;
    width: 300%; /* 가로 두 배 넓히기 */
    transform: translateX(0%);
    box-sizing: border-box;
}

.commentsForm {
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 16px;
    margin-top:10px;
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


/* 댓글 섹션 */
#comment-h3 {
    font-size: 1.3rem;
    color: #495057;
    margin-top:-50px;
    align-self: flex-start;
    
}

.comment-section {
    background-color: #fff;
    border-radius: 16px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    width: 270%;
    /* max-width 제거: 크기를 줄이지 않음 */
    box-sizing: border-box;
	display:flex;
	flex-direction:column;
	gap:10px;
}

.comment {
    padding: 32px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    border-radius:15px;
}

.comment:last-child {
    border-bottom: none;
}

.comment-author {
    font-weight: 600;
    color: #495057;

}

.comment-content {
border : 
    color: #495057;
    font-size: 1rem;
    margin-bottom: 12px;
    line-height: 1.6;
    margin-top:5px;
}

.comment-timestamp {
    font-size: 0.775rem;
    color: #868e96;
}

.delete-btn {
    background-color:#000 ;
    color: #fff;
    padding: 5px 16px;
     
    border-radius: 8px;
    position: absolute;   /* 부모 요소에 대해 절대 위치 지정 */
    right: 0;  /* 오른쪽 끝으로 이동 */
    top: 80%;  /* 세로 중앙 정렬 */
    transform: translateY(-50%);  /* 정확한 세로 중앙 정렬을 위해 */
    cursor:pointer;
    margin-right:15px;
}

.comment {
    position: relative;
    padding: 32px;
    border-bottom: 2px #d3d3d3 solid;
    border-radius: 0px; /* 댓글 영역 모서리 둥글게 */
    background-color: #fff; /* 댓글 배경색 */
}


.delete-btn:hover {
    background-color: #333;
}

#submit-btn{
	border-radius:10px;
	padding:8px 5px;
	cursor:pointer;
	  background-color: #000;
    color: #fff;
    width: 80px;
    font-size:15px;
}


#submit-btn:hover {
    background-color: #333;
}

.comment-box{
	display : flex;
	gap:12px;	
	    border-bottom : 2px #d3d3d3 solid;
	    align-items:flex-end;
	        margin-bottom : 5px;
}

</style>

<div class="container">
    <div class="comment-form-container">
        <!-- 댓글 개수를 왼쪽 상단에 배치 -->
        <div class="comment-count-container-left">댓글 <span>${commentCount}</span></div>
        
        <form class="commentsForm" action="CommentsAdd" method="post" >
            <input type="hidden" value="${post.studyid}" name="studyid"/>
            <input type="text" name="comments" id="comments" placeholder="${loginUserName}님, 댓글을 작성해보세요." />
            <div class="button-group">
               
                <button type="submit" id="submit-btn">등록</button>
            </div>
        </form>
    </div>

    <c:if test="${not empty comments}">
    <h3 id="comment-h3">댓글</h3>
</c:if>
    <div class="comment-section">
        <c:forEach var="comment" items="${comments}">
            <div class="comment">
				<div class="comment-box">
				  <div class="comment-author">${comment.username}</div>
              	  <div class="comment-timestamp">
  					  <fmt:formatDate value="${comment.createdAt}" pattern="yyyy-MM-dd HH:mm:ss" />
					</div>
				</div>
				
                <div class="comment-content">${comment.comments}</div>
                <c:if test="${loginUserId eq comment.userid}">
                    <form action="deleteComment" method="post">
                        <input type="hidden" name="commentId" value="${comment.commentsid}" />
                        <input type="hidden" name="studyid" value="${post.studyid}" />
                        <button type="submit" class="delete-btn"> 🗑 </button>
                    </form>
                </c:if>
                

                
                
                
            </div>
        </c:forEach>
    </div>
</div>