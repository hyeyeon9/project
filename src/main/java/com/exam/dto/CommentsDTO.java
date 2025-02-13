package com.exam.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import jakarta.validation.constraints.NotBlank;

@Alias("CommentsDTO")
public class CommentsDTO {

    int commentsid;       // 댓글 아이디
    String comments;      // 댓글 내용
    Timestamp createdAt; // 댓글 단 시간
    int studyid;         // 댓글 단 게시물 아이디
    String userid;       // 댓글 작성자 아이디
    String username;     // 추가된 필드: 댓글 작성자 이름
	
    public CommentsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentsDTO(int commentsid, String comments, Timestamp createdAt, int studyid, String userid,
			String username) {
		super();
		this.commentsid = commentsid;
		this.comments = comments;
		this.createdAt = createdAt;
		this.studyid = studyid;
		this.userid = userid;
		this.username = username;
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

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "CommentsDTO [commentsid=" + commentsid + ", comments=" + comments + ", createdAt=" + createdAt
				+ ", studyid=" + studyid + ", userid=" + userid + ", username=" + username + "]";
	}
    
    
}
