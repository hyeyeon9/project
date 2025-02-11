package com.exam.service;


import java.util.List;

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


	@Override
	public int deleteComment(int commentsid) {
		return mapper.deleteComment(commentsid);
	}


	@Override
	public List<CommentsDTO> findAll(int studyid) {
		return mapper.findAll(studyid);
	}


	@Override
	public int getCommentCount(int studyid) {
		return mapper.getCommentCount(studyid);
	}



}
