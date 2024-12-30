package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/contentsPage/*")
public class ContentsPageController {
	@GetMapping("/map")
	public void map() {
		log.info("map");
	}
	
	@GetMapping("/models")
	public void models() {
		log.info("models");
	}
	
	@GetMapping("/service")
	public String service(@RequestParam(value = "contentId", required = false, defaultValue = "default") String contentId, Model model) {
		String content;
		switch (contentId) {
		case "service_viewOneInquiryBoard":
			content = "service_viewOneInquiryBoard.jsp";
			break;

		default:
			content = "service_viewAllBoard.jsp";
			break;
		}
		model.addAttribute("content",content);
		return "/contentsPage/service";
	}
}
