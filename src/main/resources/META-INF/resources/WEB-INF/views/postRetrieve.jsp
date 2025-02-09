<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
      /* main.css */
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      ul {
        list-style: none;
      }

      a {
        text-decoration: none;
        outline: none;
        color: black;
      }

      header {
        width: 100%;
        height: 100px;
        display: flex;
        /* border: 2px red solid; */
        border-bottom: 2px rgb(231, 231, 231) solid;
        padding: 0 10%;
        align-items: center;
      }

      nav {
        width: 100%;
      }

      nav > ul {
        display: flex;
        gap: 30px;
        font-size: 23px;
      }

      .right {
        margin-left: auto;
      }
      
      #nav_a{
      color:#7D7A7F;
      }
      
      #nav_a:hover{
      color:black;
      transition:all 0.1s linear;
      }
      
      
      
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
            background-color: #3498db;
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

    </style>
</head>
<body>

	<jsp:include page="page/header.jsp" />
	
	<div class="RetrieveContainer">
	<jsp:include page="study/postRetrieve.jsp" flush="true" /> 
	</div>
	
	<div class="CommentsContainer">
	<jsp:include page="study/comments.jsp" flush="true" /> 
	</div>

</body>
</html>

