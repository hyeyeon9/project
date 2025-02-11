package com.exam.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias("ScrapDTO")
public class ScrapDTO {

	int scrap_id ;
	String userid; 
	int studyid; 
	Timestamp created_at;
	
	public ScrapDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ScrapDTO(int scrap_id, String userid, int studyid, Timestamp created_at) {
		super();
		this.scrap_id = scrap_id;
		this.userid = userid;
		this.studyid = studyid;
		this.created_at = created_at;
	}

	public int getScrap_id() {
		return scrap_id;
	}

	public void setScrap_id(int scrap_id) {
		this.scrap_id = scrap_id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getStudyid() {
		return studyid;
	}

	public void setStudyid(int studyid) {
		this.studyid = studyid;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}

	@Override
	public String toString() {
		return "ScrapDTO [scrap_id=" + scrap_id + ", userid=" + userid + ", studyid=" + studyid + ", created_at="
				+ created_at + "]";
	}
	

}
