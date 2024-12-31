package org.zerock.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.BoardVO;
import org.zerock.service.ContentsPageService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/contentsPage/*")
public class ContentsPageController {
	// 주입
	private final ContentsPageService service;
	
	@Autowired
    public ContentsPageController(ContentsPageService service) {
        this.service = service;
    }
	
	@GetMapping("/map")
	public void map() {
		log.info("map");
	}
	
	@GetMapping("/models")
	public void models() {
		log.info("models");
	}
	
	@GetMapping("/serviceMain")
	public String service(@ModelAttribute("content") String content, Model model) {
		log.info(content);
		if(content == null || content == "" || content.isEmpty()) {
			content = "service_viewAllBoard.jsp";
		}
		model.addAttribute("content", content);
		return "/contentsPage/service";
	}
	
	@GetMapping("/viewAllBoard")
	public String viewAllBoard(@RequestParam(value = "tab", required = false, defaultValue = "1") String tab, @RequestParam(value = "pageNum", required = false, defaultValue = "1") String pageNum, Model model) {
		List<BoardVO> list = service.getAllList();
	    String content = "service_viewAllBoard.jsp";
	    
		// 공통 데이터를 모델에 추가
	    model.addAttribute("boardList", list);
	    model.addAttribute("content", content);
	    model.addAttribute("tab", tab);
	    model.addAttribute("pageNum", pageNum);
		
	    return "/contentsPage/service";
	}
	
	
}
