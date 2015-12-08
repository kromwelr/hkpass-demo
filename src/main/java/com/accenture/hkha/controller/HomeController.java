package com.accenture.hkha.controller;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.accenture.hkha.constants.UserRoles;
import com.accenture.hkha.model.Assessment;
import com.accenture.hkha.service.AssessmentService;

@Controller
public class HomeController {

	private final Logger logger = LoggerFactory.getLogger(HomeController.class);

	private AssessmentService assessmentService;
	private String username;


	@Autowired
	public void setWorkService(AssessmentService assessmentService) {
		this.assessmentService = assessmentService;
	}

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index(Model model){
		logger.info("index()");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		this.username = auth.getName();
		logger.info("Welcome " + this.username + "!");
		
		Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		for(SimpleGrantedAuthority sga: authorities){
			logger.info("Roles: " + sga.getAuthority());
			if(sga.getAuthority().equals(UserRoles.ROLE_USER.toString())){
				return "redirect:/worklist";
			}else if(sga.getAuthority().equals(UserRoles.ROLE_APPROVER.toString())){
				return "redirect:/approvals";
			}
		}
		
		return "noaccess";
	}

	@RequestMapping(value="/worklist", method = RequestMethod.GET)
	public String showWorkList(Model model){
		
		logger.info("showWorkList()");
		model.addAttribute("worklist", assessmentService.findByUser(this.username));
		
		return "worklist";
	}

	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response){
		logger.info("logout()");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/login?logout";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {

	  ModelAndView model = new ModelAndView();
	  if (error != null) {
		model.addObject("error", "Invalid username and password!");
	  }

	  if (logout != null) {
		model.addObject("msg", "You've been logged out successfully.");
	  }
	  model.setViewName("loginpage");

	  return model;

	}
	//for 403 access denied page
		@RequestMapping(value = "/403", method = RequestMethod.GET)
		public ModelAndView accesssDenied() {

		  ModelAndView model = new ModelAndView();

		  //check if user is login
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		  if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			model.addObject("username", userDetail.getUsername());
		  }

		  model.setViewName("403");
		  return model;

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
		model.addAttribute("approvalList", assessmentService.findByStatus("FOR APPROVAL"));
		
		return "approvals";
	}
	
	@RequestMapping(value="/approvals/{id}/details", method = RequestMethod.GET)
	public String showApprovalDetails(@PathVariable int id, Model model){
		logger.info("showApprovalDetails()");
		
		Assessment assessment = assessmentService.findById(id);
		model.addAttribute("assessmentForm", assessment);
		model.addAttribute("scoreList", getScoreList());
		
		return "assessmentForm";
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
