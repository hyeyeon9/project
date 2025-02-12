<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <style>

      body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f6fa ;  
   			 margin: 0;
   			 padding: 0;
 
   			 display: flex;
   			 flex-direction: column;  /* 세로 정렬 */
  			  align-items: center;  /* 가로 중앙 정렬 */
     	   }

        .RetrieveContainer {
            width: 60%; /* 가로 너비 조정 */
            max-width: 1000px; /* 너무 넓어지지 않도록 최대 너비 설정 */
            background: #fff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top : 30px;
            
        }

        .RetrieveHeader {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
            margin-bottom: 10px;
        }

        .profile {
            display: flex;
            align-items: center;
            margin-bottom : 7px;
            margin-top:7px;
        }

        .profile-icon {
            width: 40px;
            height: 40px;
          
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            font-weight: bold;
            margin-right: 10px;
        }

        .author {
            font-weight: bold;
            font-size: 16px;
        }

        .timestamp {
            font-size: 12px;
            color: #888;
        }

        .title {
            font-size: 35px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .content {
        	padding-top :10px;
            font-size: 16px;
            color: #333;
            line-height: 1.6;
            margin-bottom: 20px;
             white-space: pre-wrap;
        }
        


        .actions {
            display: flex;
            justify-content: flex-end;
            gap: 15px;
        }

        .action-btn {
      		text-decoration: none;
   			 color: black;
   			    padding: 8px 10px;
  			  background-color: #eae9e8;
  		      border-radius: 5px;
   		    display: inline-block;
        }

        .action-btn:hover {
             background-color: #d3d3d3;
        }
		
        .edit-icon, .delete-icon {
            font-size: 20px;
            cursor: pointer;
        }
        
        .category{
          display : inline-block;
          padding : 8px 13px;
          background-color : #f5f6fa;
          margin-bottom : 10px;
          margin-top:5px;
          border-radius:10px;
        }
        
        .filled{
        	color :black;
        }
        
        #scrap-btn{
        
        	margin-left : 570px;
        	padding : 7px 13px;
        	font-size: 16px;
        	border : none;
        	border-radius : 8px;
        	color : grey;
        	display:flex;
        	cursor:pointer;
        	background-color: #eae9e8;
        	
        }
        
        #scrap-btn:hover{
        	color :black;
        }

    </style>
    
    <script>
    	$(document).ready(function(){
    		
    		$("#scrap-btn").on("click",function(){
    			
    			console.log("버튼클릭");
    			let studyid = $("#scrap-btn").data("studyid");
    			console.log(studyid);
    			
    			$.post("toggle",{studyid: studyid}, function(response){
    					console.log(response);
    				if(response.scrapped){
    					$("#scrap-btn").find(".star-icon").addClass("filled");
    					
    				}else{
    					$("#scrap-btn").find(".star-icon").removeClass("filled");
    					
    				}
    				
    				
    			});
    		});
    		
    		
    	})
  
    	
    
    </script>
    


        <span class="category">
        	<c:choose>
        		<c:when test="${post.category == 'language' }"> 📜 어학 </c:when>
        		<c:when test="${post.category == 'development'}"> 💻 개발 </c:when>
  		        <c:when test="${post.category == 'design'}"> 💡 디자인</c:when>
     		    <c:when test="${post.category == 'interview'}"> 👨‍💼 면접 </c:when>
     		    <c:when test="${post.category == 'reading'}"> 📖 독서</c:when>
     		    <c:when test="${post.category == 'others'}"> 🔍 기타</c:when>
     		    <c:otherwise>기타</c:otherwise>
        	</c:choose>
        
        
        </span>
        
    	<div class="title">${post.title}</div>
    
        <div class="RetrieveHeader">
  
            <div class="profile">
                <div class="profile-icon" style="background-color: ${mypage.bgColor}">${post.username.substring(0,1)}</div>
                <div>
                    <div class="author">${post.username}</div>
                    <div class="timestamp">${post.createdAt }</div> <!-- 날짜는 동적으로 변경 가능 -->
                </div>
            </div>
            
            <c:if test="${loginUserId != post.userid}">
                <button id="scrap-btn" data-studyid="${post.studyid}">
    			 	 <span class="star-icon ${post.scrapped ? 'filled' : ''}">★ 스크랩 </span>
            	<button>
            </c:if>
            
            <c:if test="${loginUserId eq post.userid}">
                <div class="actions">
                    <a href="edit?studyid=${post.studyid}" class="action-btn">
                        ✏️ 수정
                    </a>
                    <a href="delete?studyid=${post.studyid}" class="action-btn">
                        🗑 삭제
                    </a>
                </div>
            </c:if>
        </div>

    
        <div class="content">${post.description}</div>
        

        
<div>


</div>
    	

		

