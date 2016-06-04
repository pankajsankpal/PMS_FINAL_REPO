/*
 * AssignTPCController Class contains the various methods like 
 * Redirect to TPO Home Page
 * Assign TPC
 * Remove TPC
 * Assign special task to FTPC
 * View Users and View Tasks
 * 
 * @author Adarsh
 * 
 * */
package org.crce.interns.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.crce.interns.beans.FacultyUserBean;
import org.crce.interns.beans.UserDetailsBean;
import org.crce.interns.service.AssignTPCService;
import org.crce.interns.service.CheckRoleService;
import org.crce.interns.service.GetBranchService;
import org.crce.interns.validators.AddTPCTaskValidator;
import org.crce.interns.validators.AddTPCValidator;
import org.crce.interns.validators.RemoveTPCValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AssignTPCController {
	@Autowired
	private AssignTPCService userService;

	@Autowired
	AddTPCValidator validator;

	@Autowired
	RemoveTPCValidator rvmvalidator;

	@Autowired
	AddTPCTaskValidator addTPCTaskValidator;
	@Autowired
	private CheckRoleService crService;
	@Autowired
	private GetBranchService gbService;

	@RequestMapping(value = "/TPOHome", method = RequestMethod.GET)	//Home Page of TPO
	public ModelAndView goTPOHome(HttpServletRequest request,@ModelAttribute("command") FacultyUserBean userBean, BindingResult result) {
		System.out.println("In TPO Home Page\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPC", roleId))
			return new ModelAndView("403");
		else
		return new ModelAndView("TPO");
	}
	
	@RequestMapping(value="/ViewUsersT", method = RequestMethod.GET)//View Users for TPO
	public ModelAndView viewUsers(HttpServletRequest request) {
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPC", roleId))
			return new ModelAndView("403");
		else
		{
			Map<String, Object> modelMap = new HashMap<String, Object>();
			modelMap.put("users", userService.viewUsers());
			return new ModelAndView("viewUserT", modelMap);
		}
	}
	
	@RequestMapping(value="/ViewFacultyTasks", method = RequestMethod.GET)//View tasks assigned to FTPC
	public ModelAndView viewFacultyTasks(HttpServletRequest request) {
		System.out.println("In View TPC Tasks\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPC", roleId))
			return new ModelAndView("403");
		else
		{
			Map<String, Object> modelMap = new HashMap<String, Object>();
			modelMap.put("fusers", userService.viewFacultyTasks());
			return new ModelAndView("viewFacultyTasks", modelMap);
		}
	}
	
	
	@RequestMapping(value = "/InsertWork", method = RequestMethod.GET)//Call to jsp to get the task
	public ModelAndView createUserWork(HttpServletRequest request,@ModelAttribute("command") FacultyUserBean userBean, BindingResult result) {
		System.out.println("In Assign TPC Work\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPC", roleId))
			return new ModelAndView("403");
		else
		return new ModelAndView("insertWork");
	}
	
	@RequestMapping(value = "/AssignTPC", method = RequestMethod.GET)//Call to jsp to get username and role
	public ModelAndView assignTPC(HttpServletRequest request,@ModelAttribute("command") UserDetailsBean userBean, BindingResult result) {
		System.out.println("In Assign TPC\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPC", roleId))
			return new ModelAndView("403");
		else
		return new ModelAndView("assignTPC");
	}
	
	@RequestMapping(value = "/RemoveTPC", method = RequestMethod.GET)//Call to jsp to get usernam
	public ModelAndView removeTPC(HttpServletRequest request,@ModelAttribute("command") UserDetailsBean userBean, BindingResult result) {
		System.out.println("In Remove TPC\n");
		HttpSession session=request.getSession();
		String roleId=(String)session.getAttribute("roleId");
		if(!crService.checkRole("AssignTPC", roleId))
			return new ModelAndView("403");
		else
			return new ModelAndView("removeTPC");
	}

	@RequestMapping(value = "/SubmitAssignTPC", method = RequestMethod.POST)
	public ModelAndView submitAssignTPC(HttpServletRequest request,@ModelAttribute("command") UserDetailsBean userBean,/*@ModelAttribute("fuserBean")FacultyUserBean fuserBean,*/ BindingResult bindingResult) {
		validator.validate(userBean, bindingResult);
		System.out.println("In Submit Assign TPC\n");
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			return new ModelAndView("assignTPC");
		}
		/*HttpSession session=request.getSession();
		String user=(String)session.getAttribute("userName");
		String branch1=gbService.getBranch(userBean.getUserName());
		String branch2=gbService.getBranch(user);
		//System.out.println("Task Assigned is "+fuserBean.getUserWork());
		if(!branch1.equalsIgnoreCase(branch2))
			return new ModelAndView("assignTPC");*/
		int a;
		a=userService.assignTPC(userBean);
	//	FacultyUserBean fuserBean= new FacultyUserBean();
			System.out.println("Value Returned from Service: "+a);
			if(a==0)//No such user exists in UserDetails Table
			{
				return new ModelAndView("noUser");
			}
			if(a==3)//A Non-Student user attempted to be assigned as STPC
			{
				return new ModelAndView("notStud");	
			}
			if(a==4)//A Non-Faculty user attempted to be assigned as STPC
			{
				return new ModelAndView("notFac");
			}
			if(a==34){	//Already assigned STPC or FTPC user attempted to be assigned as TPC
				return new ModelAndView("alTPC");
			}
		return new ModelAndView("redirect:/ViewUsersT");
		//return new ModelAndView("redirect:/TPOHome");
	}
	
		
	
	@RequestMapping(value = "/SubmitInsertWork", method = RequestMethod.POST)
	public ModelAndView createWork(@ModelAttribute("command") FacultyUserBean fuserBean, BindingResult bindingResult) {
		/*validator.validate(fuserBean, bindingResult);*/
		addTPCTaskValidator.validate(fuserBean, bindingResult);
		System.out.println("In Submit TPC Work\n");
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			return new ModelAndView("insertWork");
		}
		System.out.println("Username in Controller :"+fuserBean.getUserName());
		int a;
		a=userService.insertWork(fuserBean);
		
		System.out.println("Value Returned from Service: "+a);
		if(a==0)//No such user exists in Table
		{
			return new ModelAndView("noUser");
		}
		
		return new ModelAndView("redirect:/ViewFacultyTasks");
	}
		
	
	@RequestMapping(value = "/SubmitRemoveTPC", method = RequestMethod.POST)
	public ModelAndView submitRemoveTPC(@ModelAttribute("command") UserDetailsBean userBean, BindingResult bindingResult) {
		rvmvalidator.validate(userBean, bindingResult);
		System.out.println("In Submit Remove TPC\n");
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			return new ModelAndView("removeTPC");
		}
		int a;
		a=userService.removeTPC(userBean);
		System.out.println("Value Returned from Service: "+a);
		if(a==0)//No such user exists in UserDetails Table
		{
			return new ModelAndView("noUser");
		}
		if(a==33)//User attempted to be removed is not a TPC
		{
			return new ModelAndView("notTPC");
		}
		return new ModelAndView("redirect:/ViewUsersT");
	//	return new ModelAndView("redirect:/TPOHome");
	}

}
