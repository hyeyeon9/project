package com.exam.dto;

import org.apache.ibatis.type.Alias;

import jakarta.validation.constraints.NotBlank;

@Alias("MemberDTO")
public class MemberDTO {

	String userid;
	String passwd;
	private String bgColor;
	
	@NotBlank(message = "username 필수")
	String username;
	
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(String userid, String passwd, String bgColor, @NotBlank(message = "username 필수") String username) {
		super();
		this.userid = userid;
		this.passwd = passwd;
		this.bgColor = bgColor;
		this.username = username;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getBgColor() {
		return bgColor;
	}

	public void setBgColor(String bgColor) {
		this.bgColor = bgColor;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", passwd=" + passwd + ", bgColor=" + bgColor + ", username=" + username
				+ "]";
	}
	
	
	
	
}
