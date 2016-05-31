/*
*
* Author Name: Crystal Cuthinho	
* 
* Filename: ResumeUploadController.java	
* 	
* Classes used by code: ResumeUploadService, CheckRoleService,FileUploadValidator,FileUpload
* 
* Tabes used: User_schema.professional_profile_resume
* 
* Description: This controller is used to upload resume by student
* 
* Functions: welcome(), resumeUpload() ,displayCV()	
*
*/



package org.crce.interns.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.exception.IncorrectFileFormatException;
import org.crce.interns.exception.MaxFileSizeExceededError;
import org.crce.interns.model.FileUpload;
import org.crce.interns.service.ResumeUploadService;
import org.crce.interns.validators.FileUploadValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ResumeUploadController {


	@Autowired
	private ResumeUploadService resumeUploadService;
	
	@Autowired
    FileUploadValidator validator;

	//used to navigate to ResumeUpload.jsp
	@RequestMapping("resumeUpload")
	public ModelAndView welcome() {
		return new ModelAndView("ResumeUpload");
	}

	//used to actually upload the file
	@RequestMapping(value = "/uploadResume", method = RequestMethod.POST)
	public ModelAndView resumeUpload(HttpServletRequest request,
			@RequestParam(required = false) CommonsMultipartFile fileUpload,  @ModelAttribute("fileUpload1") FileUpload fileUpload1,BindingResult result)
					throws Exception {

		try {
			
			//fileUpload1 : this is the request parameter model attribute of FileUpload type
			fileUpload1.setFile(fileUpload);
			System.out.println(fileUpload1.getFile().getSize());
			
			validator.validate(fileUpload1, result);
			
			//if no file is uploaded
			if (fileUpload1.getFile().getSize() == 0) {
				System.out.println("Error in form");
	            
	            return new ModelAndView("ResumeUpload");
			}
			
			String username = (String)request.getSession(true).getAttribute("userName");
			System.out.println("in try");
			
			//calls the service to actually upload the file
			resumeUploadService.handleFileUpload(request, fileUpload, username);
			
			
		} catch (IncorrectFileFormatException e) {
			System.out.println(e);
			ModelAndView model = new ModelAndView("ResumeUpload");
			model.addObject("error", 1);	// so that the jsp catches the error
			return model;
			
		} catch (MaxFileSizeExceededError m) {
			System.out.println(m);
			ModelAndView model = new ModelAndView("ResumeUpload");
			model.addObject("error1", 1); 	// so that the jsp catches the error
			return model;
		}
		
		return new ModelAndView("ResumeUpload");
	}
	
	@RequestMapping(value = "/dispCV", method = RequestMethod.POST)
	public ModelAndView displayCV(){
		String directory_path="";//give the directory path
		List<String> listcv=resumeUploadService.displayCVList(directory_path);
		ModelAndView model=new ModelAndView("listCV");
		model.addObject("listcv",listcv);
		return model;
	}
	
}
