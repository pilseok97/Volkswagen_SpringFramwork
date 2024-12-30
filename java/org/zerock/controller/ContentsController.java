package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/contents_touareg/*","/contents_id4/*"})
public class ContentsController {
	@GetMapping("/index")
	public void index() {
		log.info("컨텐츠 페이지 이동완료");
	}
	
	@GetMapping("/tdiPrestige")
	public void tdiPrestige(){
		log.info("tdiPrestige 이동완료");
	}
	
	@GetMapping("/tdiRLine")
	public void tdiRLine() {
		log.info("tdiRLine 이동완료");
	}
	
	@GetMapping("/id4ProLite")
	public void id4ProLite() {
		log.info("id4ProLite 이동완료");
	}
	
	@GetMapping("/id4Pro")
	public void id4Pro() {
		log.info("id4Pro 이동완료");
	}
}
