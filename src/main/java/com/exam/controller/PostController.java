package com.exam.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.PostDTO;
import com.exam.service.PostService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PostController {

	PostService service;
	
	public PostController(PostService service) {
		super();
		this.service = service;
	}

	@GetMapping("/post")
	public String post() {
		return "studyPost";
	}
	
	@PostMapping("/postAdd")
	public String postAdd( @RequestParam String title, 
			@RequestParam String description,  @RequestParam String category) {
		PostDTO dto = new PostDTO();
		
		dto.setTitle(title);
		dto.setDescription(description);
		dto.setCategory(category);
		
		int n = service.postAdd(dto);
		return "redirect:home";
	}
	
	@GetMapping("/posts")
	public String findByCategory(@RequestParam(required = false) String category, Model model) {
	    
		System.out.println("검색 카테고리: " + category);
		List<PostDTO> posts = service.findByCategory(category);
	    System.out.println("null 아님" + posts);

	    model.addAttribute("posts", posts);
	    return "home"; // studyPosts.jsp로 데이터 전달
	}

	
}
