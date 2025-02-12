package com.exam.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.dto.MemberDTO;
import com.exam.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	MemberMapper mapper;
	
	public MemberServiceImpl(MemberMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	@Transactional
	public int save(MemberDTO dto) {
		return mapper.save(dto);
	}

	
	@Override
	public MemberDTO idCheck(String userid) {
		return mapper.idCheck(userid);
	}

	@Override
	public int updateNickname(Map<String, String> map) {
		return mapper.updateNickname(map);
	}

}
