<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
        <span class="category">${post.category}</span>
    	<div class="title">${post.title}</div>
        <div class="RetrieveHeader">
  
            <div class="profile">
                <div class="profile-icon">${post.username.substring(0,1)}</div>
                <div>
                    <div class="author">${post.username}</div>
                    <div class="timestamp">${post.created_at }</div> <!-- 날짜는 동적으로 변경 가능 -->
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

		

