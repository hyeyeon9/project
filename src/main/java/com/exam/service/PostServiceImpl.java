package com.exam.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.dto.MemberDTO;
import com.exam.dto.PostDTO;
import com.exam.mapper.MemberMapper;
import com.exam.mapper.PostMapper;

@Service
public class PostServiceImpl implements PostService {

	PostMapper mapper;
	
	public PostServiceImpl(PostMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int postAdd(PostDTO dto) {
		return mapper.postAdd(dto);
	}

	@Override
	public List<PostDTO> findAll() {
		return mapper.findAll();
	}

	@Override
	public List<PostDTO> findByCategory(String category) {
		System.out.println("검색 카테고리: " + category);
		return mapper.findByCategory(category);
	}



}
