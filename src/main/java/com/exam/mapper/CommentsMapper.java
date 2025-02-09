package com.exam.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.CommentsDTO;
import com.exam.dto.MemberDTO;

@Mapper
public interface CommentsMapper {

	public int CommentsAdd(CommentsDTO dto);
	
}
