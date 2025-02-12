<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
        /* 수정 페이지용 컨테이너 */
        .edit-container {
            width: 100%;
            max-width: 800px;
            margin: 30px auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.1);
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

        /* 페이지 제목 */
        .edit-container h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 32px;
            color: #333;
        }

        /* 공통 라벨 스타일 */
        .edit-container label {
            display: block;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin: 20px 0 8px;
        }

        /* 제목 입력 필드 */
        .edit-container input[type="text"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
            transition: border-color 0.3s;
            margin-bottom: 20px;
        }

        .edit-container input[type="text"]:focus {
            border-color: black;
            outline: none;
            background-color: #fff;
        }

        /* 내용 텍스트에어리어 */
        .edit-container textarea {
            width: 100%;
            height: 280px;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
            transition: border-color 0.3s;
            margin-bottom: 20px;
            resize: vertical;
            background-color: #f9f9f9;
        }

        .edit-container textarea:focus {
            border-color: black;
            outline: none;
            background-color: #fff;
        }

        /* 하단 버튼 영역 */
        .edit-button-container {
            display: flex;
            justify-content: flex-end;
            gap: 20px;
            margin-top: 20px;
            align-items:center;
        }

        /* 취소 버튼 */
        .edit-cancel-btn {
         background-color: #28a745;
         display: inline-block;
   		 text-align: center;
    	 line-height: normal;
   		 padding: 8px 12px; /* 약간 조정 */
      	 color: white;
      	 font-size: 15px;
      	 border-radius: 5px;
      	 border :none;
      	 width : 60px;
      	 height:20px;

        }
        
        .edit-cancel-btn:hover {
           background-color: #218838; 
        }

        /* 저장 버튼 */
        .edit-save-btn {
          background-color: #F85253;
      	  color: white;
      	 font-size: 15px;
      	 border-radius: 5px;
      	 border :none;
      	 padding : 8px 10px;
        }
        .edit-save-btn:hover {
            background-color: #e43e3e;
        }
        

        /* 링크(취소) 스타일 — 필요시 */
        .edit-container a {
            text-decoration: none;
  
        }
    </style>

<div class="edit-container">
	<h2>게시물 수정</h2>
	<form action="update" method="post">
		<input type="hidden" name="studyid" value="${post.studyid }">
	    
	    <label for="title">제목  </label>
		<input type="text" name="title" id="title" value="${post.title}" required>
		
		<label for="description"> 내용  </label>
        <textarea name="description" id="description" required>${post.description}</textarea>
        
        <div class="edit-button-container">
      		<a href="postRetrieve?studyid=${post.studyid}" class="edit-cancel-btn">취소</a>
        	<button type="submit" class="edit-save-btn">수정 저장</button>
       		
        </div>
	</form>
</div>

