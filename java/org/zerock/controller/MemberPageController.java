package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/memberPage/*")
public class MemberPageController {
	// 주입
	private final MemberService service;

    @Autowired
    public MemberPageController(MemberService service) {
        this.service = service;
    }
	
	@GetMapping("/login")
	public String login(HttpSession session, HttpServletRequest request, @ModelAttribute("msg") String msg, Model model) {
		log.info("login 버튼 작동");
		if(session.getAttribute("loginUser") != null) {
			log.info("상세페이지");
			return "redirect:/memberPage/memberInfo";
		}
		log.info("login 페이지");
		model.addAttribute("msg", msg);
		return "/memberPage/login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String id, @RequestParam String password, HttpSession session, Model model) {
		MemberVO mvo = service.userIdCheck(id, password);
		if(mvo != null) {
			session.setAttribute("loginUser", mvo);
			log.info("로그인완료");
			return "redirect:/";
		}else { 
			log.info("로그인실패");
			model.addAttribute("msg", "로그인오류입니다. 다시 시도해주세요.");
			return "redirect:/memberPage/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginUser");
		return "redirect:/";
	}
	
	@GetMapping("/searchid")
	public void searchid() {
		log.info("searchid");
	}
	
	@GetMapping("/searchpwd")
	public void searchpw() {
		log.info("searchpwd");
	}
	
	@GetMapping("/signup")
	public void signup() {
		log.info("signup");
	}
	
	@PostMapping("/signup")
	public String signup(@ModelAttribute MemberVO mvo, RedirectAttributes redirectA) {
		int count = service.signup(mvo);
		if(count == 1) {
			redirectA.addFlashAttribute("msg", "회원가입이 완료되었습니다.");
		}else {
			redirectA.addFlashAttribute("msg", "오류가 발생했습니다. 다시 시도해주세요.");			
		}
		return "redirect:/memberPage/login";
	}
	
	@GetMapping("/memberPage/idcheck")
	public String idcheck(@RequestParam("id") String id, Model model) {
		int result = service.idcheckPost(id);
		model.addAttribute("id", id);
	    model.addAttribute("result", result);
	    return "/memberPage/idcheck";
	}
	
	@GetMapping("/memberInfo")
	public String memberInfo(@ModelAttribute("content") String content,@ModelAttribute("msg") String msg ,HttpSession session, Model model) {
		if(content == null || content == "" || content.isEmpty()) {
			MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
			String grade = loginUser.getGrade();
			log.info(grade);
			content = grade.equals("admin") ? "include_AdminmainInfo.jsp" : "include_mainInfo.jsp";
		}
		if(msg == null) {
			log.info("메세지 없음");
		}else {
			model.addAttribute("msg", msg);
		}
		log.info(content);
		model.addAttribute("content", content);
		return "/memberPage/memberInfo";
	}
	
	@PostMapping("/removeMvoSession")
	@ResponseBody
	public String removeMvoSession(HttpSession session) {
	    session.removeAttribute("mvo");
	    log.info("세션 속성 mvo가 삭제되었습니다.");
	    return "success";
	}
	
	@GetMapping("/updateMemberInfo")
	public String updateMemberInfo(RedirectAttributes redirctA) {
		String content = "include_CheckPassword.jsp";
		redirctA.addAttribute("content", content);
		return "redirect:/memberPage/memberInfo";
	}
	
	@PostMapping("/updatememberInfoCheck")
	public String updatememberInfoCheck(@RequestParam String password ,HttpSession session, RedirectAttributes redirctA) {
		int num = ((MemberVO)session.getAttribute("loginUser")).getNum();
		String checkPass = service.getCheckPassword(num);
		if(checkPass.equals(password)) {
			String content = "include_UpdateMemberInfo.jsp";
			MemberVO mvo = service.getMember(num);
			redirctA.addAttribute("content", content);
			if(num == mvo.getNum()) {
				session.setAttribute("mvo", mvo);
			}
			return "redirect:/memberPage/memberInfo";
		}else {
			String content = "include_CheckPassword.jsp";
			redirctA.addAttribute("content", content);
			redirctA.addFlashAttribute("msg", "비밀번호를 다시 확인해 주시기 바랍니다.");
			return "redirect:/memberPage/memberInfo";
		}
		
	}
	
	@PostMapping("/updateMemberInfo")
	public String updateMemberInfo(@RequestParam int num, @RequestParam String tel, @RequestParam String address, @RequestParam String email, RedirectAttributes redirctA) {
		MemberVO mvo = new MemberVO();
		mvo.setNum(num);
		mvo.setTel(tel);
		mvo.setEmail(email);
		mvo.setAddress(address);
		int count = service.updateMemberInfo(mvo);
		String content = "include_mainInfo.jsp";
		if(count == 1) {
			redirctA.addFlashAttribute("msg", "회원정보 수정이 완료됐습니다.");
		}else {
			redirctA.addFlashAttribute("msg", "회원정보 수정이 실패했습니다.");
		}
		redirctA.addAttribute("content", content);
		return "redirect:/memberPage/memberInfo";
	}
	
	@GetMapping("/changePassword")
	public String changePassword(RedirectAttributes redirectA) {
		String content = "include_ChangePassword.jsp";
		redirectA.addAttribute("content", content);
		return "redirect:/memberPage/memberInfo";
	}
	
	@PostMapping("/changePassword")
	public String changePassword(@RequestParam int num, @RequestParam String password, @RequestParam String newpass, @RequestParam String checkNewpass, RedirectAttributes redirectA) {
		String checkpw = service.getCheckPassword(num);
		String content = "include_ChangePassword.jsp";
		if(checkpw.equals(password)) {
			if(newpass.equals(checkNewpass)) {
				int count = service.changePassword(num, newpass);
				content = "include_mainInfo.jsp";
				if(count == 1) {
					redirectA.addFlashAttribute("msg", "비밀번호가 변경되었습니다.");
				}else {
					redirectA.addFlashAttribute("msg", "오류가 발생했습니다. 다시 시도해주세요.");
				}
			}else {
				redirectA.addFlashAttribute("msg", "새로운 비밀번호가 일치하지 않습니다.");
			}
		}else {
			redirectA.addFlashAttribute("msg", "현재 비밀번호를 다시 확인해주세요.");
		}
		redirectA.addAttribute("content", content);
		return "redirect:/memberPage/memberInfo";
	}
	
	@GetMapping("/deleteMember")
	public String deleteMember(RedirectAttributes redirectA) {
		String content = "include_DeleteMember.jsp";
		redirectA.addAttribute("content", content);
		return "redirect:/memberPage/memberInfo";
	}
	
	@PostMapping("/deleteMember")
	public String deleteMember(@RequestParam int num, @RequestParam String password, RedirectAttributes redirectA, HttpSession session) {
		String checkpw = service.getCheckPassword(num);
		String content = "";
		String direct = "redirect:/";
		if(password.equals(checkpw)) {
			content = "include_mainInfo.jsp";
			int count = service.deleteMember(num);
			if(count == 1) {
				redirectA.addFlashAttribute("msg", "회원탈퇴가 완료되었습니다.");
				session.invalidate();
			}else {
				redirectA.addFlashAttribute("msg", "오류가 발생했습니다. 다시 시도해주세요.");
			}
		}else {
			content = "include_DeleteMember.jsp";
			direct = "redirect:/memberPage/memberInfo";
			redirectA.addFlashAttribute("msg", "비밀번호를 다시 확인해주세요.");
		}
		redirectA.addAttribute("content", content);
		return direct;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
