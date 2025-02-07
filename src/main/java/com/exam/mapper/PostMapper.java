package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.PostDTO;


@Mapper
public interface PostMapper {
	public int postAdd(PostDTO dto);
	public List<PostDTO> findAll();
	public List<PostDTO> findByCategory(String category);
}
