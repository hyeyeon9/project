package com.exam.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import jakarta.validation.constraints.NotBlank;

@Alias("CommentsDTO")
public class CommentsDTO {

	int commentsid;       // 댓글 아이디
	String comments;      // 댓글 내용
	Timestamp created_at; // 댓글 단 시간
	int study_id;         // 댓글 단 게시물 아이디
	String user_id;       // 댓글 작성자 아이디
	
	public CommentsDTO(int commentsid, String comments, Timestamp created_at, int study_id, String user_id) {
		super();
		this.commentsid = commentsid;
		this.comments = comments;
		this.created_at = created_at;
		this.study_id = study_id;
		this.user_id = user_id;
	}

	public CommentsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getCommentsid() {
		return commentsid;
	}

	public void setCommentsid(int commentsid) {
		this.commentsid = commentsid;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}

	public int getStudy_id() {
		return study_id;
	}

	public void setStudy_id(int study_id) {
		this.study_id = study_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "CommentsDTO [commentsid=" + commentsid + ", comments=" + comments + ", created_at=" + created_at
				+ ", study_id=" + study_id + ", user_id=" + user_id + "]";
	}
	
	
}
