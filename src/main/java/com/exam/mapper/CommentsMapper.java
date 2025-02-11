package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.CommentsDTO;
import com.exam.dto.MemberDTO;

@Mapper
public interface CommentsMapper {

	public int CommentsAdd(CommentsDTO dto);
	public int deleteComment(int commentsid);
	public List<CommentsDTO> findAll(int studyid);
	public int getCommentCount(int studyid);
	
}
