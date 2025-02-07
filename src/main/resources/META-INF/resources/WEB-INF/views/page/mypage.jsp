<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
 <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
  
  <div class="MyPageBox">
 	
<div class ="MyProfileContainer">
		<span id="MyprofileTitle">내 프로필</span>
		<div class="profile-content-box">
			<div class="mainProfile">
				<img alt="#"/>
				<div>
					${mypage.username}
				</div>
				<button id="updateBtn"> 수정 </button>
			</div>
		
			<div class="subProfile">
				<div class="subProfile_content">
					<div class ="subProfile_content_label">닉네임</div>
					<div>${mypage.username}</div>
				</div>
				<div class="subProfile_content">
					<div class ="subProfile_content_label">아이디</div>
					<div>${mypage.userid}</div>
				</div>
				<div class="subProfile_content">
					<div class ="subProfile_content_label">관심목록</div>
					<div>${mypage.userid}</div>
				</div>
			</div>

		</div>

 	</div>
 
  
</div>