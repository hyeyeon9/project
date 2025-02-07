package com.exam.service;

import java.util.List;

import com.exam.dto.MemberDTO;
import com.exam.dto.PostDTO;

public interface PostService {
	public int postAdd(PostDTO dto);
	public List<PostDTO> findAll();
	public List<PostDTO> findByCategory(String category);
}
