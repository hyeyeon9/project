package com.exam.service;

import java.util.Map;

import com.exam.dto.MemberDTO;

public interface MemberService {
	public int save(MemberDTO dto);
	public MemberDTO idCheck(String userid);
	public int updateNickname(Map<String, String> map);
}