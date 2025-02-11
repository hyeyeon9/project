package com.exam.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.MemberDTO;
import com.exam.dto.ScrapDTO;
import com.exam.service.AuthenticationService;
import com.exam.service.ScrapService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ScrapController {
	
	ScrapService service;
	AuthenticationService authService;

	
	



	public ScrapController(ScrapService service, AuthenticationService authService) {
		super();
		this.service = service;
		this.authService = authService;
	}






	@PostMapping("/toggle")
	public ResponseEntity<?> toggle(@RequestParam("studyid") int studyid) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    MemberDTO user = (MemberDTO) auth.getPrincipal();
        String userid = user.getUserid();
        log.info(userid);
        
        // Map 생성 (쿼리 파라미터 전달)
        Map<String, Object> map = new HashMap<>();
        map.put("studyid",studyid);
        map.put("userid", userid);
        
        //사용자가 이미 스크랩한 게시물인지 확인
        boolean isScrapped = service.isScrapped(map);
        
        if(isScrapped) {
        	service.deleteScrap(map); //이미 스크랩했으면 삭제
        	
        }else {
        	
        	ScrapDTO scrap = new ScrapDTO();
        	scrap.setUserid(userid);
        	scrap.setStudyid(studyid);
        	service.addScrap(scrap);
        }
        
        
		return ResponseEntity.ok().body(Map.of("scrapped", !isScrapped));
	}
	
	

	
}
