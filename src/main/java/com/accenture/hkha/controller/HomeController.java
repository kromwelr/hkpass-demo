package com.accenture.hkha.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.accenture.hkha.model.Work;

@Controller
public class HomeController {

	private final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index(Model model){
		logger.info("index()");
		return "home";
	}
	
	@RequestMapping(value="/worklist", method = RequestMethod.GET)
	public String showWorkList(Model model){
		logger.info("showWorkList()");
		model.addAttribute("worklist", stubWorkList());
		
		return "worklist";
	}
	
	
	private List<Work> stubWorkList(){
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Date date = Calendar.getInstance().getTime();
		
		List<Work> list = new ArrayList<Work>();
		
		//Item1
		Work w1 = new Work();
		w1.setId(001);
		w1.setStatus("DRAFT");
		w1.setCreatedDate(sdf.format(date));
		w1.setCreatedBy("Test User");
		list.add(w1);
		
		//Item2
		Work w2 = new Work();
		w2.setId(002);
		w2.setStatus("DRAFT");
		w2.setCreatedDate(sdf.format(date));
		w2.setCreatedBy("Test User");
		list.add(w2);
		
		//Item3
		Work w3 = new Work();
		w3.setId(003);
		w3.setStatus("APPROVED");
		w3.setCreatedDate(sdf.format(date));
		w3.setCreatedBy("Test User");
		list.add(w3);
		
		return list;
	}
	
	
}
