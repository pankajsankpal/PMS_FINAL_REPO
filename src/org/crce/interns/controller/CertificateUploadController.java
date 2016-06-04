/*
*
* Author Name: Crystal Cuthinho	
* 
* Filename: CertificateUploadController.java	
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

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.exception.IncorrectFileFormatException;
import org.crce.interns.exception.MaxFileSizeExceededError;
import org.crce.interns.model.FileUpload;
import org.crce.interns.service.CertificateUploadService;
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
public class CertificateUploadController {
	
	@Autowired
	private CertificateUploadService certificateUploadService;
	
	@Autowired
    FileUploadValidator validator;
	
	//used to navigate to CertificateUpload.jsp
	
		@RequestMapping("certificateUpload")
		public ModelAndView welcome() {
			return new ModelAndView("UploadCertificate");
		}

		//used to actually upload the file
		@RequestMapping(value = "/uploadCertificate", method = RequestMethod.POST)
		public ModelAndView resumeUpload(HttpServletRequest request,
				@RequestParam(required = false) CommonsMultipartFile fileUpload,  @ModelAttribute("fileUpload1") FileUpload fileUpload1,BindingResult result)
						throws Exception {
			
			String type = request.getParameter("type");
			ModelAndView model = new ModelAndView("UploadCertificate");
			model.addObject(type, 1);
			
			
			try {
				
				//fileUpload1 : this is the request parameter model attribute of FileUpload type
				fileUpload1.setFile(fileUpload);
				
				System.out.println(fileUpload1.getFile().getSize());
				
				
				
				validator.validate(fileUpload1, result);
				
				//if no file is uploaded
				if (fileUpload1.getFile().getSize() == 0) {
					System.out.println("Error in form");
		            
		            return model;
				}
				
				String username = (String)request.getSession(true).getAttribute("userName");
				System.out.println("in try");
				
				//calls the service to actually upload the file
				certificateUploadService.handleFileUpload(request, fileUpload, username);
				
				
			} catch (IncorrectFileFormatException e) {
				
				System.out.println(e);			
				model.addObject("error", 1);	// so that the jsp catches the error
			
				
			} catch (MaxFileSizeExceededError m) {
				
				System.out.println(m);				
				model.addObject("error1", 1); 	// so that the jsp catches the error
			
			}
			
			return model;
		}

}
