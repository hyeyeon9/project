package com.exam.service;

import java.util.List;

import com.exam.dto.CommentsDTO;

public interface CommentsService {
	public int CommentsAdd(CommentsDTO dto);
	public int deleteComment(int commentsid);
	public List<CommentsDTO> findAll(int studyid);
	public int getCommentCount(int studyid);
}
