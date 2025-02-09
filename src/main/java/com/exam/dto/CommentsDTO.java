package com.exam.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import jakarta.validation.constraints.NotBlank;

@Alias("CommentsDTO")
public class CommentsDTO {

	int commentsid;       // 댓글 아이디
	String comments;      // 댓글 내용
	Timestamp created_at; // 댓글 단 시간
	int studyid;         // 댓글 단 게시물 아이디
	String userid;       // 댓글 작성자 아이디
	
	public CommentsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentsDTO(int commentsid, String comments, Timestamp created_at, int studyid, String userid) {
		super();
		this.commentsid = commentsid;
		this.comments = comments;
		this.created_at = created_at;
		this.studyid = studyid;
		this.userid = userid;
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

	public int getStudyid() {
		return studyid;
	}

	public void setStudyid(int studyid) {
		this.studyid = studyid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "CommentsDTO [commentsid=" + commentsid + ", comments=" + comments + ", created_at=" + created_at
				+ ", studyid=" + studyid + ", userid=" + userid + "]";
	}
	
	
}
