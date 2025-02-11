package com.exam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.exam.dto.PostDTO;
import com.exam.dto.ScrapDTO;

public interface ScrapService {
	public boolean isScrapped(Map< String , Object> map);
	public int addScrap(ScrapDTO dto);
	public int deleteScrap(Map<String, Object> map);
	public List<Integer> findScrappedStudyIds(String userid);
	
	
}
