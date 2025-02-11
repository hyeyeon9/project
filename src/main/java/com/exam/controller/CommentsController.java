package com.exam.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exam.dto.CommentsDTO;
import com.exam.dto.MemberDTO;
import com.exam.service.AuthenticationService;
import com.exam.service.CommentsService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CommentsController {
	
	CommentsService service;
	AuthenticationService authService;
	

	public CommentsController(CommentsService service, AuthenticationService authService) {
		super();
		this.service = service;
		this.authService = authService;
	}




	@PostMapping("/CommentsAdd")
	public String CommentsAdd(@RequestParam String studyid,
	                          @RequestParam String comments) {
	    // studyid 검증 및 파싱
	    if (studyid == null || studyid.trim().isEmpty()) {
	        return "errorPage";
	    }
	    int studyIdInt;
	    try {
	        studyIdInt = Integer.parseInt(studyid);
	    } catch (NumberFormatException e) {
	        return "errorPage";
	    }

	    // 로그인한 사용자 정보 가져오기
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth == null || !auth.isAuthenticated() || "anonymousUser".equals(auth.getPrincipal())) {
	        // 로그인되지 않은 상태라면 로그인 페이지로 리다이렉트
	        return "redirect:/login";
	    }
	    
	    MemberDTO memberDTO = (MemberDTO) auth.getPrincipal();
	    String userid = memberDTO.getUserid();
	    
	    // (선택사항) DB에 해당 회원이 존재하는지 추가 검증
	    MemberDTO dbMember = authService.findByUserid(userid);
	    if (dbMember == null) {
	        // 회원 데이터가 없으면 에러 처리
	        return "errorPage";
	    }
	    
	    // 댓글 객체 생성 후 등록
	    CommentsDTO dto = new CommentsDTO();
	    dto.setStudyid(studyIdInt);
	    dto.setComments(comments);
	    dto.setUserid(userid);
	    
	    service.CommentsAdd(dto);
	    
	    // 댓글 등록 후, 기존 게시물 상세보기 페이지로 리다이렉트(PGR 패턴)
	    return "redirect:/postRetrieve?studyid=" + studyIdInt;
	}

	
	
	

    
    

    // 댓글 삭제
    @PostMapping("/deleteComment")
    public String deleteComment(@RequestParam int commentId, @RequestParam int studyid, Model model) {
        log.info("댓글 삭제 요청 받음: commentId = " + commentId);

        // 댓글 삭제 서비스 호출  
        service.deleteComment(commentId);

        // 댓글 개수 갱신
        int commentCount = service.getCommentCount(studyid);

        log.info("댓글 개수: {}", commentCount); // 서버 로그에 댓글 개수 출력

        // 댓글 목록 가져오기
        model.addAttribute("commentCount", commentCount);
        model.addAttribute("comments", service.findAll(studyid));

        // 삭제 후, 해당 게시물 페이지로 리디렉션
        return "redirect:/postRetrieve?studyid=" + studyid;
    }
	
	
	
	
}