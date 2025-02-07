<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
.category-container {
    margin: 10px 0;
}

.category-label {
    font-weight: bold;
}

.category-options {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
}

.category-options input[type="radio"] {
    display: none; /* 라디오 버튼 숨김 */
}

.category-bubble {
    display: inline-block;
    padding: 8px 15px;
    border-radius: 20px;
    border: 1px solid #ccc;
    background-color: #f4f4f4;
    cursor: pointer;
    transition: all 0.3s;
}

.category-options input[type="radio"]:checked + .category-bubble {
    background-color: #007bff;
    color: white;
    border-color: #007bff;
}


    </style>
</head>
<body>
	 <h2>게시판</h2>
 
  <form action="postAdd" method="post" >
    
	제목: <input type="text" name="title"> <br>

	<div class="category-container">
        <label class="category-label">카테고리 선택:</label>
        <div class="category-options">
            <input type="radio" id="language" name="category" value="language">
            <label for="language" class="category-bubble">어학</label>

            <input type="radio" id="development" name="category" value="development">
            <label for="development" class="category-bubble">개발</label>

            <input type="radio" id="design" name="category" value="design">
            <label for="design" class="category-bubble">디자인</label>

            <input type="radio" id="interview" name="category" value="interview">
            <label for="interview" class="category-bubble">면접</label>

            <input type="radio" id="reading" name="category" value="reading">
            <label for="reading" class="category-bubble">독서</label>
        </div>
    </div>
    
	내용: <input type="text" name="description"> <br>
	
    <button>ok</button>
  </form>
</body>
</html>

