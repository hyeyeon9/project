package com.exam.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.dto.MemberDTO;
import com.exam.dto.PostDTO;
import com.exam.service.AuthenticationService;
import com.exam.service.PostService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {

	PostService service;
	AuthenticationService authService;
	
	public HomeController(PostService service, AuthenticationService authService) {
		super();
		this.service = service;
		this.authService = authService;
	}



	// 게시물 보이기
	@GetMapping("/home")
	public String ShowPost(Model m) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    MemberDTO dto = (MemberDTO) auth.getPrincipal();
	    String loginUserName = dto.getUsername();
	    String userid = dto.getUserid();
	    
		MemberDTO db_dto = authService.findByUserid(userid);
		m.addAttribute("mypage", db_dto);
	    
	    m.addAttribute("loginUserName", loginUserName);

		List<PostDTO> list = service.findAll();
		log.info("{}",list );
		m.addAttribute("posts",list);
		return "home";
	}
}
