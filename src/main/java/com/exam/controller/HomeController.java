package com.exam.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.dto.PostDTO;
import com.exam.service.PostService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {

	PostService service;
	
	public HomeController(PostService service) {
		super();
		this.service = service;
	}



	// 게시물 보이기
	@GetMapping("/home")
	public String ShowPost(Model m) {
		List<PostDTO> list = service.findAll();
		log.info("{}",list );
		m.addAttribute("posts",list);
		return "home";
	}
}
