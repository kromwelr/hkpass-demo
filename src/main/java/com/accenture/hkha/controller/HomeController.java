package com.accenture.hkha.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.accenture.hkha.service.WorkService;

@Controller
public class HomeController {

	private final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private WorkService workService;
	
	@Autowired
	public void setWorkService(WorkService workService) {
		this.workService = workService;
	}

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index(Model model){
		logger.info("index()");
		return "home";
	}
	
	@RequestMapping(value="/worklist", method = RequestMethod.GET)
	public String showWorkList(Model model){
		logger.info("showWorkList()");
		model.addAttribute("worklist", workService.findAll());
		
		return "worklist";
	}
	
//	@RequestMapping(value="/worklist/{id}", method = RequestMethod.GET)
//	public String showWorkDetails(Model model){
//		logger.info("showWorkDetails()");
//		return "details";
//	}
	
}
