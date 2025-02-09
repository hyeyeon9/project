package com.exam.service;


import org.springframework.stereotype.Service;

import com.exam.dto.CommentsDTO;
import com.exam.mapper.CommentsMapper;


@Service
public class CommentsServiceImpl implements CommentsService {

	// mapper 의존성 주입
	CommentsMapper mapper;
	
	public CommentsServiceImpl(CommentsMapper mapper) {
		super();
		this.mapper = mapper;
	}


	// 댓글 달기 기능
	@Override
	public int CommentsAdd(CommentsDTO dto) {
		return mapper.CommentsAdd(dto);
	}



}
