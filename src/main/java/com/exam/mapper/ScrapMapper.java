package com.exam.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.PostDTO;
import com.exam.dto.ScrapDTO;


@Mapper
public interface ScrapMapper {
	
	public boolean isScrapped(Map< String , Object> map);
	public int addScrap(ScrapDTO dto);
	public int deleteScrap(Map<String, Object> map);
	public List<Integer> findScrappedStudyIds(String userid);

	
}
