package com.accenture.hkha.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.accenture.hkha.model.Assessment;
import com.accenture.hkha.service.AssessmentService;

@Controller
public class HomeController {

	private final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private AssessmentService assessmentService;
	
	@Autowired
	public void setWorkService(AssessmentService assessmentService) {
		this.assessmentService = assessmentService;
	}

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index(Model model){
		logger.info("index()");
		return "home";
	}
	
	
	@RequestMapping(value="/worklist", method = RequestMethod.GET)
	public String showWorkList(Model model){
		logger.info("showWorkList()");
		model.addAttribute("worklist", assessmentService.findAll());
		
		
		return "worklist";
	}
	
	@RequestMapping(value="/worklist/{id}/details", method = RequestMethod.GET)
	public String showWorkDetails(@PathVariable("id") int id, Model model){
		logger.info("showWorkDetails() id: {}", id);
		
		Assessment assessment = assessmentService.findById(id);
		model.addAttribute("assessmentForm", assessment);
		model.addAttribute("scoreList", getScoreList());
		
		logger.info(assessment.toString());
		
		
		return "assessmentForm";
	}
	
	@RequestMapping(value="/submit", method = RequestMethod.POST)
	public String submitAssessment(@ModelAttribute("assessmentForm") Assessment assessment, Model model){
		
		logger.info("submitAssessment()");
		
		assessment.setStatus("FOR APPROVAL");
		assessmentService.saveOrUpdate(assessment);
		logger.info(assessment.toString());
		
		return "redirect:/worklist";
	}
	
	
	@RequestMapping(value="/approvals", method = RequestMethod.GET)
	public String showApprovals(Model model){
		
		logger.info("showApprovals()");
		
		
		
		return "approvals";
	}
	
	
	private List<String> getScoreList(){
		List<String> list = new ArrayList<String>();
		list.add("A");
		list.add("B");
		list.add("C");
		list.add("D");
		list.add("N");
		
		return list;
	}
	
}
