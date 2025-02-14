package com.exam.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import jakarta.validation.constraints.NotBlank;

@Alias("PostDTO")
public class PostDTO {

	int studyid;
	String title;
	String description;
	String category;
	String userid; // 추가: 작성자 ID 저장
	String username; // 👈 닉네임
	Timestamp createdAt;
	boolean isScrapped;  // ✅ 추가 (스크랩 여부)
	String bgColor;   // 작성자 배경색
	
	public PostDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PostDTO(int studyid, String title, String description, String category, String userid, String username,
			Timestamp createdAt, boolean isScrapped, String bgColor) {
		super();
		this.studyid = studyid;
		this.title = title;
		this.description = description;
		this.category = category;
		this.userid = userid;
		this.username = username;
		this.createdAt = createdAt;
		this.isScrapped = isScrapped;
		this.bgColor = bgColor;
	}

	public int getStudyid() {
		return studyid;
	}

	public void setStudyid(int studyid) {
		this.studyid = studyid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}

	public boolean isScrapped() {
		return isScrapped;
	}

	public void setScrapped(boolean isScrapped) {
		this.isScrapped = isScrapped;
	}

	public String getBgColor() {
		return bgColor;
	}

	public void setBgColor(String bgColor) {
		this.bgColor = bgColor;
	}

	@Override
	public String toString() {
		return "PostDTO [studyid=" + studyid + ", title=" + title + ", description=" + description + ", category="
				+ category + ", userid=" + userid + ", username=" + username + ", createdAt=" + createdAt
				+ ", isScrapped=" + isScrapped + ", bgColor=" + bgColor + "]";
	}
	
	
	
}
