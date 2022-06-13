package com.callor.app.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.app.model.BoardVO;
import com.callor.app.model.RecallReturn;
import com.callor.app.model.RecallVO;
import com.callor.app.service.BoardService;
import com.callor.app.service.RecallService;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class HomeController {
	
	private RecallService recallService;
	@Autowired
	private BoardService boardSservice;

	
	public HomeController(@Qualifier("recallServiceV3") RecallService recallService, BoardService boardService) {
		this.recallService = recallService;
	}
	
	//TODO 메인 페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		String queryString5 = recallService.queryString5();
		RecallReturn recallReturn5 = recallService.getRecallList(queryString5);
		List<RecallVO> recallList5 = recallReturn5.content;
		
		
		List<BoardVO> boardList =  boardSservice.selectAll();

		model.addAttribute("RECALLS", recallList5);
		
		model.addAttribute("BOARDLIST", boardList);
		
		return "home";
	}
	
	
}
