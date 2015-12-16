package com.accenture.hkha.controller;


import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
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
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.accenture.hkha.constants.UserRoles;
import com.accenture.hkha.model.Assessment2;
import com.accenture.hkha.model.FileBucket;
import com.accenture.hkha.service.AssessmentService;

@Controller
public class HomeController {

	private final Logger logger = LoggerFactory.getLogger(HomeController.class);

	private AssessmentService assessmentService;
	private String username;
	private Integer assessmentId;

	//unix server path - for demo
	private String ROOT_DIR = "/opt/upload/";
	//private String ROOT_DIR = "C:/Apps/hkha/";
	

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
			if(sga.getAuthority().equals(UserRoles.ROLE_ASSESSOR.toString())){
				return "redirect:/worklist";
			}else if(sga.getAuthority().equals(UserRoles.ROLE_PROF.toString())){
				return "redirect:/prof/worklist";
			}else if(sga.getAuthority().equals(UserRoles.ROLE_CHIEF.toString())){
				return "redirect:/chief/worklist";
			}else if(sga.getAuthority().equals(UserRoles.ROLE_ADMIN.toString())){
				return "redirect:/admin/worklist";
			}
		}

		return "noaccess";
	}

	@RequestMapping(value="/reports", method = RequestMethod.GET)
	public String showReports(Model model){

		logger.info("showReports()");


		return "reports";
	}

	@RequestMapping(value="/worklist", method = RequestMethod.GET)
	public String showWorkList(Model model){

		logger.info("showWorkList()");

		List<Assessment2> list = new ArrayList<Assessment2>();
		list.addAll(assessmentService.findByStatus("FOR ASSESSMENT"));
		list.addAll(assessmentService.findByStatus("RETURNED"));
		list.addAll(assessmentService.findByStatus("SAVE DRAFT"));
		list.addAll(assessmentService.findByStatus("SAVED"));

		model.addAttribute("worklist", list);

		return "worklist";
	}

	@RequestMapping(value="/prof/worklist", method = RequestMethod.GET)
	public String showProfWorklist(Model model){
		logger.info("showProfWorkList()");

		model.addAttribute("reviewList", assessmentService.findByStatusAndAssignment("FOR REVIEW",this.username));

		return "worklist_prof";
	}

	@RequestMapping(value="/prof/worklist/{id}/details", method = RequestMethod.GET)
	public String showReviewDetails(@PathVariable("id") int id, Model model){
		logger.info("showReviewDetails()");
		this.assessmentId = id;
		model.addAttribute("assessmentForm", assessmentService.findById(id));
		model.addAttribute("mode", "PROF_MODE");

		return "assessmentSummaryProf";
	}

	@RequestMapping(value="/approve/prof/{id}", method = RequestMethod.GET)
	public String approveProf(@PathVariable("id") int id, Model model){
		logger.info("approveProf()");

		Assessment2 assessment = assessmentService.findById(id);
		assessment.setApprovedByProf("Y");
		assessment.setStatus("FOR APPROVAL");
		assessment.setAssignedTo("CHIEF");

		assessmentService.saveOrUpdate(assessment);
		logger.info("PROF Approval - Complete!");

		return "redirect:/prof/worklist";
	}

	@RequestMapping(value="/return/prof/{id}", method = RequestMethod.GET)
	public String returnAssessment(@PathVariable("id") int id, Model model){
		logger.info("returnAssessment()");

		Assessment2 assessment = assessmentService.findById(id);
		assessment.setApprovedByProf("N");
		assessment.setStatus("RETURNED");
		assessment.setAssignedTo("ASSESSOR");

		assessmentService.saveOrUpdate(assessment);
		logger.info("Assessment Returned!");

		return "redirect:/prof/worklist";
	}


	@RequestMapping(value="/chief/worklist", method = RequestMethod.GET)
	public String showChiefWorklist(Model model){
		logger.info("showChiefWorklist()");

		model.addAttribute("approvalList", assessmentService.findByStatusAndAssignment("FOR APPROVAL", this.username));

		return "worklist_chief";
	}

	@RequestMapping(value="/admin/worklist", method = RequestMethod.GET)
	public String showAdminWorklist(Model model){
		logger.info("showAdminWorklist()");

		model.addAttribute("adminList", assessmentService.findAllAssessment());

		return "worklist_admin";
	}
	@RequestMapping(value="/admin/worklist/{id}/details", method = RequestMethod.GET)
	public String showAssessmentDetails(@PathVariable("id") int id, Model model){
		logger.info("showAssessmentDetails()");
		this.assessmentId = id;
		model.addAttribute("assessmentForm", assessmentService.findById(id));
		model.addAttribute("mode", "ADMIN_MODE");

		return "assessmentSummaryAdmin";
	}

	@RequestMapping(value="/chief/worklist/{id}/details", method = RequestMethod.GET)
	public String showApprovalDetails(@PathVariable("id") int id, Model model){
		logger.info("showApprovalDetails()");
		this.assessmentId = id;
		model.addAttribute("assessmentForm", assessmentService.findById(id));
		model.addAttribute("mode", "CHIEF_MODE");

		return "assessmentSummaryChief";
	}

	@RequestMapping(value="/submitChief", method = RequestMethod.GET)
	public String submitChiefSummary(Model model){

		Assessment2 assessment = assessmentService.findById(this.assessmentId);
		assessment.setStatus("APPROVED");
		assessment.setAssignedTo("chief");

		assessmentService.saveOrUpdate(assessment);
		logger.info("submit successful!");

		return "redirect:/chief/worklist";
	}

	@RequestMapping(value="/approve/chief/{id}", method = RequestMethod.GET)
	public String approveChief(@PathVariable("id") int id, Model model){

		logger.info("approveChief()");

		Assessment2 assessment = assessmentService.findById(id);
		assessment.setApprovedByChief("Y");
		assessment.setStatus("APPROVED");
		assessment.setAssignedTo("ASSESSOR");

		assessmentService.saveOrUpdate(assessment);
		logger.info("CHIEF Approval - Complete!");

		return "redirect:/chief/worklist";

	}

	@RequestMapping(value="/reject/chief/{id}", method = RequestMethod.GET)
	public String rejectAssessment(@PathVariable("id") int id, Model model){

		logger.info("rejectAssessment()");

		Assessment2 assessment = assessmentService.findById(id);
		assessment.setApprovedByChief("N");
		assessment.setStatus("REJECTED");
		assessment.setAssignedTo("ASSESSOR");

		assessmentService.saveOrUpdate(assessment);
		logger.info("Assessment Rejected!");

		return "redirect:/chief/worklist";

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
		@RequestMapping(value = "/noaccess", method = RequestMethod.GET)
		public ModelAndView accesssDenied() {

		  ModelAndView model = new ModelAndView();

		  //check if user is login
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		  if (!(auth instanceof AnonymousAuthenticationToken)) {
			String userDetail = (String) auth.getPrincipal();
			model.addObject("username", userDetail);
		  }

		  model.setViewName("noaccess");
		  return model;

		}




	@RequestMapping(value="/worklist/{id}/form", method = RequestMethod.GET)
	public String showWorkDetails(@PathVariable("id") int id, Model model){
		logger.info("showWorkDetails() id: {}", id);

		List<String> attachmentList = new ArrayList<String>();
		
		Assessment2 assessment = assessmentService.findById(id);
		model.addAttribute("assessmentForm", assessment);
		
		if(assessment.getAttachments() != null){
			String[] attachments = assessment.getAttachments().split(",");
			attachmentList = Arrays.asList(attachments);			
		}
		
		model.addAttribute("attachments", attachmentList);
		
		logger.info(assessment.toString());


		return "assessmentForm";
	}

	@RequestMapping(value="/worklist/{id}/form/confirm", method = RequestMethod.POST)
	public String submitAssessment(@ModelAttribute("assessmentForm") Assessment2 assessment, Model model, @PathVariable int id){

		logger.info("submitAssessment()");
		logger.info("id: " + id);
		this.assessmentId = id;

		model.addAttribute("assessmentForm", assessment);
		assessmentService.saveOrUpdate(assessment);

		logger.info(assessment.toString());

		return "assessmentSummary";
	}

	@RequestMapping(value="/worklist/{id}/form/save", method = RequestMethod.POST)
	public String saveAssessment(@ModelAttribute("assessmentForm") Assessment2 assessment, Model model, @PathVariable int id){

		logger.info("saveAssessment()");
		logger.info("id: " + id);
		this.assessmentId = id;

		assessment.setStatus("SAVE DRAFT");

		assessmentService.saveOrUpdate(assessment);
		model.addAttribute("assessmentForm", assessment);

		logger.info(assessment.toString());

		return "redirect:/worklist/{id}/form";
	}

	@RequestMapping(value="worklist/{id}/form/summary", method = RequestMethod.GET)
	public String showSummary(@ModelAttribute("assessmentForm") Assessment2 assessment, Model model){

		//Assessment2 assessment = assessmentService.findById(this.assessmentId);
		/*model.addAttribute("assessment", assessment);
		model.addAttribute("mode", "ASSESS_MODE");

		assessment.setStatus("FOR APPROVAL");
		assessment.setAssignedTo("prof");

		assessmentService.saveOrUpdate(assessment);*/
		model.addAttribute("assessmentForm", assessment);

		return "assessmentSummary";
	}

	@RequestMapping(value="/worklist/{id}/form/submit", method = RequestMethod.POST)
	public String submitSummary(@ModelAttribute("assessmentForm") Assessment2 assessment, Model model){

		Assessment2 assessmentOrig = assessmentService.findById(this.assessmentId);
		assessmentOrig.setStatus("FOR REVIEW");
		assessmentOrig.setAssignedTo("prof");
		
//		assessment.setStatus("FOR REVIEW");
//		assessment.setAssignedTo("prof");
//		assessment.setContract(assessmentOrig.getContract());
//		assessment.setAssessmentDate(assessmentOrig.getAssessmentDate());
//		assessment.setCreatedBy(assessmentOrig.getCreatedBy());
//		assessment.setCreatedDate(assessmentOrig.getCreatedDate());

		assessmentService.saveOrUpdate(assessmentOrig);
		logger.info("submit successful!");

		model.addAttribute("assessmentForm", assessmentOrig);
		return "redirect:/worklist";//"assessmentSummaryAck";//
	}

	@RequestMapping(value="/submitProf", method = RequestMethod.GET)
	public String submitProfSummary(Model model){

		Assessment2 assessment = assessmentService.findById(this.assessmentId);
		assessment.setStatus("FOR APPROVAL");
		assessment.setAssignedTo("chief");

		assessmentService.saveOrUpdate(assessment);
		logger.info("submit successful!");

		return "redirect:/prof/worklist";
	}
	
	@RequestMapping(value="/worklist/{id}/form/upload", method = RequestMethod.GET)
	public String getFileUpload(@PathVariable("id") int id, Model model){
		logger.info("File Upload: " + id);
		FileBucket fileModel = new FileBucket();
		fileModel.setAssessmentId(id);
		
		model.addAttribute("fileBucket", fileModel);
		return "file_upload";
	}
	
	@RequestMapping(value="/upload", method = RequestMethod.POST)
	public String fileUpload(@ModelAttribute("fileBucket") FileBucket fileBucket, Model model){
		
		logger.info("Fetching file.." + fileBucket.getAssessmentId());
		MultipartFile multipartFile = fileBucket.getFile();
		
		try {
			
			FileCopyUtils.copy(fileBucket.getFile().getBytes(), new File(this.ROOT_DIR + fileBucket.getFile().getOriginalFilename()));
			//save file
			
			Assessment2 assessment = assessmentService.findById(fileBucket.getAssessmentId());
			
			String attachments = "";
			if(assessment.getAttachments() != null){
				attachments = assessment.getAttachments();
			}
			
			if(!attachments.equals("")){
				attachments = attachments + ",";
			}
			
			attachments = attachments + fileBucket.getFile().getOriginalFilename();
			assessment.setAttachments(attachments);
			
			logger.info("Attachments: " + attachments);
			
			assessmentService.saveOrUpdate(assessment);
			
			model.addAttribute("fileName",multipartFile.getOriginalFilename());
			model.addAttribute("id", fileBucket.getAssessmentId());
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "upload_success";
		
	}
	
	@RequestMapping(value="/download/{fileName:.+}", method = RequestMethod.GET)
	public void downloadFile(HttpServletResponse response, @PathVariable String fileName) throws IOException{
		
		logger.info("download file: " + this.ROOT_DIR + fileName);
		
		File file = new File(this.ROOT_DIR + fileName);
		if(!file.exists()){
			String errorMessage = "Sorry. The file you are looking for does not exist";
            System.out.println(errorMessage);
            OutputStream outputStream = response.getOutputStream();
            outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
            outputStream.close();
            return;
		}
		
		String mimeType = URLConnection.guessContentTypeFromName(file.getName());
		if(mimeType==null){
            System.out.println("mimetype is not detectable, will take default");
            mimeType = "application/octet-stream";
        }
		
		logger.info("mimeType: " + mimeType);
		
		response.setContentType(mimeType);
		response.setHeader("Content-Disposition", String.format("attachment; filename=\"" + file.getName() +"\""));
		response.setContentLength((int)file.length());
		 
        InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
        FileCopyUtils.copy(inputStream, response.getOutputStream());
		
	}


	public Integer getAssessmentId() {
		return assessmentId;
	}

	public void setAssessmentId(Integer assessmentId) {
		this.assessmentId = assessmentId;
	}


}
