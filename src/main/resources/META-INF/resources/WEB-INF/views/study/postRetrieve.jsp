<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <style>

      body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f6fa !important;  /* 강제 적용 */
    margin: 0;
    padding: 0;
    height: 100vh;  /* 전체 화면 크기 설정 */
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
            margin-bottom : 15px;
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
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .content {
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
   			 color: white;
   			    padding: 8px 10px;
  			  background-color: #007bff;
  		      border-radius: 5px;
   		    display: inline-block;
        }

        .action-btn:hover {
            color: #000;
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
        	font-size: 20px;
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
    

    
        <span class="category">${post.category}</span>
    	<div class="title">${post.title}</div>
    
        <div class="RetrieveHeader">
  
            <div class="profile">
                <div class="profile-icon" style="background-color: ${mypage.bgColor}">${post.username.substring(0,1)}</div>
                <div>
                    <div class="author">${post.username}</div>
                    <div class="timestamp">${post.createdAt }</div> <!-- 날짜는 동적으로 변경 가능 -->
                </div>
            </div>
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


        <button id="scrap-btn" data-studyid="${post.studyid}">
    			<span class="star-icon ${post.scrapped ? 'filled' : ''}">★</span>
    	<button>

</div>
    	

		

