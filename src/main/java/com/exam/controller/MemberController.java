package com.exam.controller;


import java.lang.reflect.Member;

import org.slf4j.LoggerFactory;
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
import com.exam.service.AuthenticationService;
import com.exam.service.MemberService;

import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {
	
	
	MemberService memberService;
	AuthenticationService authService;
	

	public MemberController(MemberService memberService, AuthenticationService authService) {
		super();
		this.memberService = memberService;
		this.authService = authService;
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
		
		return "mypage";
		
		
	}
	
}




