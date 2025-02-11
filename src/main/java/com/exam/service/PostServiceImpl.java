package com.exam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.dto.MemberDTO;
import com.exam.dto.PostDTO;
import com.exam.mapper.MemberMapper;
import com.exam.mapper.PostMapper;
import com.exam.mapper.ScrapMapper;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class PostServiceImpl implements PostService {

	PostMapper mapper;
	ScrapMapper scrapMapper;
	
	


	public PostServiceImpl(PostMapper mapper, ScrapMapper scrapMapper) {
		super();
		this.mapper = mapper;
		this.scrapMapper = scrapMapper;
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

	@Override
	public int PostDelete(int studyid) {
		return mapper.PostDelete(studyid);
	}

	@Override
	public int PostUpdate(PostDTO dto) {
		return mapper.PostUpdate(dto);
	}

	@Override
	public PostDTO findById(int studyid) {
		return mapper.findById(studyid);
	}

	@Override
	public PostDTO findPostWithScrapStatus(int studyid, String userid) {
		PostDTO post = mapper.findById(studyid);  // 게시물 정보 가져오기

	    if (post != null) {
	        // 사용자가 스크랩했는지 확인
	        Map<String, Object> scrapMap = new HashMap<>();
	        scrapMap.put("userid", userid);
	        scrapMap.put("studyid", studyid);

	        boolean isScrapped = scrapMapper.isScrapped(scrapMap);
	        post.setScrapped(isScrapped);  // ✅ 스크랩 여부 설정
	        
	    }
	    
		return post;
	}

	@Override
	public List<PostDTO> findPostsByStudyIds(List<Integer> studyIds) {
		return mapper.findPostsByStudyIds(studyIds);
	}



}
