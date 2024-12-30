package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/subPage/*")
public class SubPageController {
	@GetMapping("/subPage_Arteon")
	public void subPage_Arteon() {
		log.info("페이지 이동 완료");
	}
	
	@GetMapping("/subPage_Golf8")
	public void subPage_Golf8(){
		log.info("페이지 이동 완료");
	}
	
	@GetMapping("/subPage_GolfGTI")
	public void subPage_GolfGTI(){
		log.info("페이지 이동 완료");
	}
	
	@GetMapping("/subPage_id4")
	public void subPage_id4(){
		log.info("페이지 이동 완료");
	}
	
	@GetMapping("/subPage_Jetta")
	public void subPage_Jetta(){
		log.info("페이지 이동 완료");
	}
	
	@GetMapping("/subPage_Tiguan")
	public void subPage_Tiguan(){
		log.info("페이지 이동 완료");
	}
	
	
	@GetMapping("/subPage_TiguanAllspace")
	public void subPage_TiguanAllspace(){
		log.info("페이지 이동 완료");
	}
	
	@GetMapping("/subPage_Touareg")
	public void subPage_Touareg(){
		log.info("페이지 이동 완료");
	}
}
