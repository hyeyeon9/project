package com.exam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.dto.MemberDTO;
import com.exam.dto.PostDTO;
import com.exam.dto.ScrapDTO;
import com.exam.mapper.MemberMapper;
import com.exam.mapper.PostMapper;
import com.exam.mapper.ScrapMapper;

@Service
public class ScrapServiceImpl implements ScrapService {

	ScrapMapper mapper;
	
	
	public ScrapServiceImpl(ScrapMapper mapper) {
		super();
		this.mapper = mapper;
	}

	@Override
	public boolean isScrapped(Map<String, Object> map) {
		return mapper.isScrapped(map);
	}

	@Override
	public int addScrap(ScrapDTO dto) {
		return mapper.addScrap(dto);
	}

	@Override
	public int deleteScrap(Map<String, Object> map) {
		return mapper.deleteScrap(map);
	}

	@Override
	public List<Integer> findScrappedStudyIds(String userid) {
		return mapper.findScrappedStudyIds(userid);
	}





}
