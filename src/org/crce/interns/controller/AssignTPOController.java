/*
 * AssignTPOController Class contains the various methods like 
 * Redirect to Admin Home Page
 * Redirect to FTPC Home Page
 * Assign STPC by FTPC
 * Remove STPC by FTPC
 * Assign TPO by Admin
 * View Users(for Admin and FTPC)
 * 
 * @author Adarsh
 * 
 * */
package org.crce.interns.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.crce.interns.beans.FacultyUserBean;
import org.crce.interns.beans.NotifyForm;
import org.crce.interns.beans.UserDetailsBean;
import org.crce.interns.service.AssignTPOService;
import org.crce.interns.service.CheckRoleService;
import org.crce.interns.validators.AddTPOValidator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AssignTPOController {
	@Autowired
	private AssignTPOService userService;
	@Autowired
	private CheckRoleService crService;
	@Autowired
	AddTPOValidator validator;

	@RequestMapping(value = "/AdminHome", method = RequestMethod.GET)	//Admin Home Page
	public ModelAndView goAdminHome(HttpServletRequest request,@ModelAttribute("command") FacultyUserBean userBean, BindingResult result) {
		System.out.println("In Admin Home Page\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPO", roleId))
			return new ModelAndView("403");
		else
		return new ModelAndView("Admin");
	}
	
	@RequestMapping(value = "/FTPCHome", method = RequestMethod.GET)	//FTPC Home page	
	public ModelAndView goFTPCHome(HttpServletRequest request,@ModelAttribute("notify") FacultyUserBean userBean, BindingResult result) {
		System.out.println("In Faculty TPC Home Page\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPCF", roleId))
			return new ModelAndView("403");
		else
		return new ModelAndView("FacultyTPC");
	}
	
	@RequestMapping(value="/ViewUsersA", method = RequestMethod.GET)//View Users for Admin
	public ModelAndView viewUsers(HttpServletRequest request) {
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPO", roleId))
			return new ModelAndView("403");
		else
		{
			Map<String, Object> modelMap = new HashMap<String, Object>();
			modelMap.put("users", userService.viewUsers());
			return new ModelAndView("viewUserA", modelMap);
		}
	}
	
	@RequestMapping(value="/ViewUsersF", method = RequestMethod.GET)//View Users for FTPC
	public ModelAndView viewUsersF(HttpServletRequest request) {
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPCF", roleId))
			return new ModelAndView("403");
		else
		{
			Map<String, Object> modelMap = new HashMap<String, Object>();
			modelMap.put("users", userService.viewUsers());
			return new ModelAndView("viewUserF", modelMap);
		}
	}


	@RequestMapping(value = "/AssignTPCF", method = RequestMethod.GET)//Call to jsp to get username
	public ModelAndView assignTPCF(HttpServletRequest request,@ModelAttribute("command") UserDetailsBean userBean, BindingResult result) {
		System.out.println("In Assign TPC\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPCF", roleId))
			return new ModelAndView("403");
		else
			return new ModelAndView("assignTPCF");
	}
	
	@RequestMapping(value = "/AssignTPO", method = RequestMethod.GET)//Call to jsp to get username
	public ModelAndView assignTPO(HttpServletRequest request,@ModelAttribute("command") UserDetailsBean userBean, BindingResult result) {
		System.out.println("In Assign TPO\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPO", roleId))
			return new ModelAndView("403");
		else
		return new ModelAndView("assignTPO");	}

	@RequestMapping(value = "/RemoveTPCF", method = RequestMethod.GET)//Call to jsp to get username
	public ModelAndView removeTPCF(HttpServletRequest request,@ModelAttribute("command") UserDetailsBean userBean, BindingResult result) {
		System.out.println("In Remove TPCF\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPCF", roleId))
			return new ModelAndView("403");
		else
		return new ModelAndView("removeTPCF");
	}

	@RequestMapping(value = "/RemoveTPO", method = RequestMethod.GET)//Call to jsp to get username
	public ModelAndView removeTPO(HttpServletRequest request,@ModelAttribute("command") UserDetailsBean userBean, BindingResult result) {
		System.out.println("In Remove TP0\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPO", roleId))
			return new ModelAndView("403");
		else
		return new ModelAndView("removeTPO");
	}

	@RequestMapping(value = "/SubmitAssignTPO", method = RequestMethod.POST)
	public ModelAndView createUser(@ModelAttribute("command") UserDetailsBean userBean, BindingResult bindingResult) {
		validator.validate(userBean, bindingResult);
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			return new ModelAndView("assignTPO");
		}
		int a;
		a=userService.assignTPO(userBean);
		System.out.println("Value Returned from Service: "+a);
		if(a==0)//No such user exists in UserDetails Table
		{
			return new ModelAndView("noUser");
		}
		if(a==5)//A Non-Faculty user attempted to be assigned as TPO
		{
			return new ModelAndView("notFac");
		}
		if(a==55){  //Already assigned TPO user attempted to be assigned as TPO
			return new ModelAndView("alTPO");
		}
		return new ModelAndView("redirect:/ViewUsersA");
		//return new ModelAndView("redirect:/AdminHome");
	}
		
	@RequestMapping(value = "/SubmitAssignTPCF", method = RequestMethod.POST)
	public ModelAndView createTPCF(@ModelAttribute("command") UserDetailsBean userBean, BindingResult bindingResult) {
		validator.validate(userBean, bindingResult);
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			return new ModelAndView("assignTPCF");
		}
		int a;
		a=userService.assignTPCF(userBean);
		//return new ModelAndView("redirect:/FTPCHome");
		if(a==0)//No such user exists in UserDetails Table
		{
			return new ModelAndView("noUser");
		}
		if(a==3)//A Non-Student user attempted to be assigned as STPC
		{
			return new ModelAndView("notStud");	
		}
		if(a==34){  //Already assigned STPC or FTPC user attempted to be assigned as TPC
			return new ModelAndView("alTPC");
		}
		return new ModelAndView("redirect:/ViewUsersF");
		//return new ModelAndView("redirect:/AdminHome");
	}
	
	@RequestMapping(value = "/SubmitRemoveTPO", method = RequestMethod.POST)
	public ModelAndView deleteUser(@ModelAttribute("command") UserDetailsBean userBean, BindingResult bindingResult) {
		
		System.out.println("In Submit RemoveTPo");
		validator.validate(userBean, bindingResult);
		System.out.println("In Submit RemoveTPo");
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			return new ModelAndView("removeTPO");
		}
		int a;
		a=userService.removeTPO(userBean);
		System.out.println("Value Returned from Service: "+a);
		if(a==0)//No such user exists in UserDetails Table
		{
			return new ModelAndView("noUser");
		}
		if(a==55)//User attempted to be removed as TPO is not a TPO
		{
			return new ModelAndView("notTPO");
		}
		return new ModelAndView("redirect:/ViewUsersA");
		//return new ModelAndView("redirect:/AdminHome");
	}
	
	@RequestMapping(value = "/SubmitRemoveTPCF", method = RequestMethod.POST)
	public ModelAndView deleteTPCF(@ModelAttribute("command") UserDetailsBean userBean, BindingResult bindingResult) {
		
		System.out.println("In Submit RemoveTPCF");
		validator.validate(userBean, bindingResult);

		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			return new ModelAndView("removeTPCF");
		}
		int a;
		a=userService.removeTPCF(userBean);
		System.out.println("in Remove TPCF:Value Returned from Service: "+a);
		if(a==0)//No such user exists in UserDetails Table
		{
			return new ModelAndView("noUser");
		}
		if(a==33)//User attempted to be removed is not a STPC
		{
			return new ModelAndView("notTPC");
		}
		return new ModelAndView("redirect:/ViewUsersF");
		//return new ModelAndView("redirect:/AdminHome");
	}
}
