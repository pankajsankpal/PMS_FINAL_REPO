package org.crce.interns.controller;



import org.crce.interns.exception.IncorrectFileFormatException;
import org.crce.interns.exception.MaxFileSizeExceededError;
import org.crce.interns.service.AddUserService;
import org.crce.interns.service.CheckRoleService;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.crce.interns.service.DirectoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AddUserController {
	
	@Autowired
	private AddUserService addUserService;
	@Autowired
	private CheckRoleService crService;
	
        @Autowired
        private DirectoryService directoryService;
	@RequestMapping(value="/addUser", method = RequestMethod.GET)
	public ModelAndView indexjsp(HttpServletRequest request) {
		HttpSession session=request.getSession();
		String role =  (String)session.getAttribute("roleId");
		if(!crService.checkRole("AddUser", role))
			return new ModelAndView("403");
		else
			return new ModelAndView("AddUserViaCSV");
	}

	   
	
	
	@RequestMapping( value = "/uploadFile", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, @RequestParam CommonsMultipartFile fileUpload)
			throws Exception {

		ModelAndView model = new ModelAndView("AddUserViaCSV");
		try {
			//System.out.println(year);
			
			addUserService.handleFileUpload(request,fileUpload);
			// loadCopyFile("user_schema.userdetails");
			directoryService.createStudentFolder();
			// returns to the same index page
			
			//model.addObject("year",Calendar.getInstance().get(Calendar.YEAR));
		} catch (IncorrectFileFormatException e) {
			
			System.out.println(e);
			
			model.addObject("error", 1);
			
			
		} catch (MaxFileSizeExceededError m) {
			System.out.println(m);
			
			model.addObject("error1", 1);
			
		}
		
		return model;	}

        

}
