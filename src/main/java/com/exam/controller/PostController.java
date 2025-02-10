package com.exam.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.MemberDTO;
import com.exam.dto.PostDTO;
import com.exam.service.PostService;

import jakarta.servlet.http.HttpSession;


@Controller
public class PostController {

	PostService service;
	
	public PostController(PostService service) {
		super();
		this.service = service;
	}

	
	// 게시물 작성 페이지로 가기
	@GetMapping("/post")
	public String post() {
		return "studyPost";
	}
	
	// 게시물 삽입
	@PostMapping("/postAdd")
	public String postAdd( @RequestParam String title, 
			@RequestParam String description,  @RequestParam String category
			) {
		// 게시물을 작성한 사람의 아이디까지 같이 올리기
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		MemberDTO dto = (MemberDTO)auth.getPrincipal();
		String userid = dto.getUserid(); // 현재 로그인 한 사용자 아이디 가져오기
		
		PostDTO post  = new PostDTO();
		
		post.setTitle(title);
		post.setDescription(description);
		post.setCategory(category);
		post.setUserid(userid); // 사용자 아이디 저장하기
		
		
		int n = service.postAdd(post);
		return "redirect:home";
	}
	
	// 카테고리별 게시물 보기
	@GetMapping("/posts")
	public String findByCategory(@RequestParam(required = false) String category, Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    MemberDTO dto = (MemberDTO) auth.getPrincipal();
	    String loginUserName = dto.getUsername();
	    
	    
		
		System.out.println("검색 카테고리: " + category);
		List<PostDTO> posts = service.findByCategory(category);
	    System.out.println("null 아님" + posts);

	    model.addAttribute("posts", posts);
	    model.addAttribute("loginUserName", loginUserName);
	    return "home"; // studyPosts.jsp로 데이터 전달
	}
	
	// 게시물 삭제
	@GetMapping("/delete")
	public String PostDelete(@RequestParam int studyid) {
		int n = service.PostDelete(studyid);
		return "redirect:home";
	}

	
	// 게시물 자세히보기
	@GetMapping("/postRetrieve")
	public String ShowPostRetrieve(@RequestParam int studyid, Model m) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    MemberDTO dto = (MemberDTO) auth.getPrincipal();
	    String loginUserId = dto.getUserid(); // 현재 로그인한 사용자 아이디 가져오기
	    String loginUserName = dto.getUsername();
	    
		 PostDTO post  = service.findById(studyid);
		 m.addAttribute("post",post );
		 m.addAttribute("loginUserId", loginUserId);
		 m.addAttribute("loginUserName", loginUserName);
		 
		return "postRetrieve";
	}
	
	 // 게시물 수정 페이지로 이동
	@GetMapping("/edit")
	public String PostUshowEditPage(@RequestParam int studyid, Model m  ) {
		PostDTO post = service.findById(studyid);
		m.addAttribute("post", post);
		return "editPost"; // 수정 페이지로 이동
	}
	
	// 게시물 수정
	@PostMapping("/update")
	public String updatePost(@ModelAttribute PostDTO dto) {
		service.PostUpdate(dto);
		return "redirect:postRetrieve?studyid=" + dto.getStudyid(); // 수정 후 상세페이지로 이동
		
	}
	

	
}
