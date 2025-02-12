package com.exam.controller;


import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exam.dto.MemberDTO;
import com.exam.dto.PostDTO;
import com.exam.service.AuthenticationService;
import com.exam.service.MemberService;
import com.exam.service.PostService;
import com.exam.service.ScrapService;

import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {
	
	
	MemberService memberService;
	AuthenticationService authService;
	ScrapService scrapService;
	PostService postService;
	
	public MemberController(MemberService memberService, AuthenticationService authService, ScrapService scrapService,
			PostService postService) {
		super();
		this.memberService = memberService;
		this.authService = authService;
		this.scrapService = scrapService;
		this.postService = postService;
	}

	//회원가입 화면 보이기
	@GetMapping("/signup")
	public String signupForm(Model m) {
		
		MemberDTO dto = new MemberDTO();
		m.addAttribute("mem", dto);
		
		return "memberForm";
	}
	
	// 1. 실제 회원가입 구현
	@PostMapping("/signup")
	public String signup(@Valid @ModelAttribute("mem")
	                      MemberDTO dto, BindingResult result) {
		
		// 에러발생
		if(result.hasErrors()) {
			return "memberForm";
		}
		
		log.info("dto :{}", dto);

		//비번 암호화 (필수*******************************)
		String pw = dto.getPasswd(); 
		String encodedPW = new BCryptPasswordEncoder().encode(pw);
		
		log.info("pw :{}", pw);
		log.info("encodedPW :{}", encodedPW);
		
		String[] softColors = { "#FFB6C1", // Light Pink
                "#FFDAB9", // Peach Puff
                "#E6E6FA", // Lavender
                "#F0E68C", // Khaki
                "#98FB98", // Pale Green
                "#AFEEEE", // Pale Turquoise
                "#D3D3D3"};  // Light Gray

		Random random = new Random();
		String bgColor = softColors[random.nextInt(softColors.length)];
		dto.setBgColor(bgColor);
		
		
		// 암호화한 비밀번호로 다시 저장
		dto.setPasswd(encodedPW);
		
		// 회원저장
		int n = memberService.save(dto);
		// 성공
		return "redirect:home";
	}
	
	// 2. 아이디 중복체크
	@GetMapping("/idcheck")
	@ResponseBody
	public String idCheck(@RequestParam String userid) {
		MemberDTO dto = memberService.idCheck(userid);
		
		log.info("userid:{}", userid);
		
		String mesg = "아이디 사용 가능";
		
		if(dto != null) {
			 mesg = "아이디 중복";
		}
		
		return mesg;
	}
	
	
	// 마이페이지 만들기
	@GetMapping("/mypage")
	public String mypage(Model m) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		log.info("{}",auth);
		
		MemberDTO dto = (MemberDTO)auth.getPrincipal();
		String userid = dto.getUserid();
		
		MemberDTO db_dto = authService.findByUserid(userid);
		m.addAttribute("mypage", db_dto);
		
		// 스크랩 테이블에서 studyid 리스트 조회
		List<Integer> studyIds = scrapService.findScrappedStudyIds(userid);
		List<PostDTO> scrappedPosts;
		
		if(studyIds == null ||studyIds.isEmpty() ) {
			
			scrappedPosts = new ArrayList<>(); // 혹은 Collections.emptyList();
		}else {
			// studyid 리스트를 기반으로 게시물 정보(PostDTO) 조회
			scrappedPosts = postService.findPostsByStudyIds(studyIds);
			
		}
		
	
		m.addAttribute("scrappedPosts",scrappedPosts );
		
		
		return "mypage";
		
		
	}
	
	// 닉네임 수정하기
	@PostMapping("updateNickname")
	@ResponseBody
	public ResponseEntity<String> updateNickname(@RequestParam("nickname") String newNickName) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		MemberDTO dto = (MemberDTO)auth.getPrincipal();
		String userid = dto.getUserid();
		
		Map<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("nickname", newNickName);
		int n  = memberService.updateNickname(map );
		
		if(n>= 1) {
			 return ResponseEntity.ok("닉네임 변경 성공");
			
		}else {
			  return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("변경 실패");
		}
	
	}
	
}




