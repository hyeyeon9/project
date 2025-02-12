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

        .container {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 32px;
            color: #333;
        }
        
        /* 제목 글자 */
        label[for="title"] {
       display: block;           
       font-size: 18px;           
       font-weight: bold;        
       color: #333;              
       margin-bottom: 8px; 
       margin-top: 20px;   
            
      }


        /* 제목 입력 필드 */
        .input-div input[type="text"] {
            width: 50%;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
            transition: border-color 0.3s;
            margin-bottom: 20px;
        }

      .input-div input[type="title"]:focus {
            border-color: black;
            outline: none;
            background-color: #fff;
        }


        /* 카테고리 선택 */
        .category-container {
            margin-top: 15px;
        }

        .category-label {
            font-weight: bold;
            font-size: 18px;
            color: black;
            margin-bottom: 15px;
            display: block;
        }

        .category-options {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
        }

        .category-options input[type="radio"] {
            display: none;
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


      /* 내용 글자 */
      label[for="description"] {
       display: block;           
       font-size: 18px;           
       font-weight: bold;        
       color: #333;              
       margin-bottom: 8px; 
       margin-top: 40px;   
            
      }


        /* 본문 내용 */
   	.text-area {
            width: 90%;
            height: 400px;
            padding: 15px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            transition: border-color 0.3s;
            background-color: #f9f9f9;
            resize: vertical;
            white-space: pre-wrap;
        }

        .text-area:focus {
            border-color: black;
            outline: none;
            background-color: #fff;
        }


   /* 하단의 취소와 저장 버튼 */
   .button-container {
         display: flex;      
         gap: 20px;         
       justify-content: flex-end;  
       margin-top: 20px;   
   }

   /* 취소 버튼 스타일 */
   .cancel-btn {
       width: 120px;
       padding: 12px 0;
       background-color: #28a745;
       color: white;
       font-size: 18px;
       border-radius: 5px;
       border: none;
       cursor: pointer;
       transition: background-color 0.3s;
   }

   /* 마우스 오버 시 */
   .cancel-btn:hover {
       background-color: #218838; 
   }

   /* 저장 버튼 스타일 */
   .save-btn {
       width: 120px;        
       padding: 12px 0;
       background-color: #F85253;
       color: white;
       font-size: 18px;
       border-radius: 5px;
       border: none;
       cursor: pointer;
       transition: background-color 0.3s;
   }

    /* 마우스 오버 시 */
   .save-btn:hover {
       background-color: #e43e3e;
   }
   



    </style>
</head>
<body>
	 <h2>스터디 모집하기</h2>

 
  <form action="postAdd" method="post" >
  
    <!-- 제목 입력 필드 -->
    <div class="input-div">
    <label for="title">제목</label>
    <input type="text" name="title" id="title" placeholder="제목을 입력하세요" required>
 	</div>
 	
 	<!-- 카테고리 선택 -->
	<div class="category-container">
        <label class="category-label">카테고리 선택</label>
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
            
             <input type="radio" id="others" name="category" value="others">
            <label for="others" class="category-bubble">기타</label>
        </div>
    </div>
    
	
	
	<!-- 본문 내용 입력 -->
    <div class="input-div">
      <label for="description">내용</label>
      <textarea name = "description" id = "description" class = "text-area" placeholder="내용을 입력하세요" required></textarea>
    </div>
    
    <!-- 하단의 취소와 저장 버튼 -->
    <div class="button-container">
    
   	
    	 <button type = "button" class="cancel-btn">취소</button> <br>
    	
         <button type = "submit" class="save-btn">저장</button> <br>
     </div>
	
	

  </form>
</body>
</html>

