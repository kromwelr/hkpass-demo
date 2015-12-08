package com.accenture.hkha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		return showWorkList(model);//"home";
	}

	@RequestMapping(value="/worklist", method = RequestMethod.GET)
	public String showWorkList(Model model){
		logger.info("showWorkList()");
		model.addAttribute("worklist", workService.findAll());

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


//	@RequestMapping(value="/worklist/{id}", method = RequestMethod.GET)
//	public String showWorkDetails(Model model){
//		logger.info("showWorkDetails()");
//		return "details";
//	}

}
