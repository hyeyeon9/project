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
    String username;     // 추가된 필드: 댓글 작성자 이름
    
    public CommentsDTO() {
        super();
    }

    public CommentsDTO(int commentsid, String comments, Timestamp created_at, int studyid, String userid, String username) {
        super();
        this.commentsid = commentsid;
        this.comments = comments;
        this.created_at = created_at;
        this.studyid = studyid;
        this.userid = userid;
        this.username = username;  // 추가된 부분
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

    // 추가된 getter, setter
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "CommentsDTO [commentsid=" + commentsid + ", comments=" + comments + ", created_at=" + created_at
                + ", studyid=" + studyid + ", userid=" + userid + ", username=" + username + "]";  // 수정된 부분
    }
}
