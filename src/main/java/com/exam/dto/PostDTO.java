package com.exam.dto;

import org.apache.ibatis.type.Alias;

import jakarta.validation.constraints.NotBlank;

@Alias("PostDTO")
public class PostDTO {

	int studyid;
	String title;
	String description;
	String category;
	
	public PostDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PostDTO(int studyid, String title, String description, String category) {
		super();
		this.studyid = studyid;
		this.title = title;
		this.description = description;
		this.category = category;
	}

	public int getStudyid() {
		return studyid;
	}

//	public void setStudyid(int studyid) {
//		this.studyid = studyid;
//	}

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

	@Override
	public String toString() {
		return "PostDTO [studyid=" + studyid + ", title=" + title + ", description=" + description + ", category="
				+ category + "]";
	}
	
	
	
	
}
