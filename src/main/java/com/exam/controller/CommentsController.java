package com.exam.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.CommentsDTO;
import com.exam.dto.MemberDTO;
import com.exam.service.CommentsService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CommentsController {
	
	CommentsService service;
	
	public CommentsController(CommentsService service) {
		super();
		this.service = service;
	}


	// 댓글 달기 기능   =>  댓글을 form 으로 받으니 post매핑
	@PostMapping("/CommentsAdd")
	public String CommentsAdd(@RequestParam int studyid, @RequestParam String comments){
		
		// 현재 로그인 한 사용자 아이디 가져오기
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		MemberDTO memberDTO = (MemberDTO)auth.getPrincipal();
		String userid = memberDTO.getUserid();
		
		CommentsDTO dto = new CommentsDTO();
		dto.setStudy_id(studyid);
		dto.setComments(comments);
		dto.setUser_id(userid);
		
		service.CommentsAdd(dto);
		
		return "redirect:/postRetrieve?studyid=" + studyid;// 댓글 단 후 postRetrieve.jsp로 이동
	}
}