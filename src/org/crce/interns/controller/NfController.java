/**
 * @author Nevil Dsouza
 *
 *	Main controller
 *	DEPENDENCIES: , , 
 */

package org.crce.interns.controller;


import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.crce.interns.beans.NotificationBean;
import org.crce.interns.beans.PersonalProfileBean;
import org.crce.interns.beans.ProfessionalProfileBean;
import org.crce.interns.beans.UserDetailsBean;
import org.crce.interns.service.CheckRoleService;
import org.crce.interns.service.NfService;
import org.crce.interns.service.ProfileService;
import org.crce.interns.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class NfController {
	
	@Autowired
	private NfService nfService;
	
	@Autowired
	private ProfileService profileService;
	
	@RequestMapping(value="/checkNf", method = RequestMethod.GET)
	public ModelAndView checkNf(HttpServletRequest request) {
		
		System.out.println("Inside NfController");
		//nfService.checkNf();
		String id="7000";
		
		String username=(String)request.getSession(true).getAttribute("userName");
		String roleId=(String)request.getSession(true).getAttribute("roleId");		
		
		UserDetailsBean userDetailsBean= new UserDetailsBean();			
		ProfessionalProfileBean professionalProfileBean=new ProfessionalProfileBean();
		PersonalProfileBean personalProfileBean=new PersonalProfileBean();
	
	
		userDetailsBean.setUserName(id);
		professionalProfileBean.setUserName(id);
		personalProfileBean.setUserName(id);
	
	
		userDetailsBean = profileService.getProfile(userDetailsBean);
		professionalProfileBean = profileService.getProfile(professionalProfileBean);
		personalProfileBean = profileService.getProfile(personalProfileBean);	
	
		List<NotificationBean> nfList = nfService.getNf(userDetailsBean, professionalProfileBean, personalProfileBean);
		nfList = nfService.sortByDate(nfList);
		
		
		ModelAndView model=null;
		
		model = new ModelAndView("nftest");
		model.addObject("nf",nfList);
		
		return model;
	}
	
	
	@RequestMapping(value="/addNf", method = RequestMethod.GET)
	public ModelAndView addNf(HttpServletRequest request) {
		
		NotificationBean add=new NotificationBean(); 
		add.setType("USER");
		add.setCategory("TEST");
		add.setUrl("/");
		add.setUserOrGroupId("7000");
		add.setDateTime(new SimpleDateFormat("dd-MM-yyyy hh:mm a").format(new Date()));
		add.setMessage("ADDED NOTIFICATION 2. Congratulations");
		
		ModelAndView model=null;
		//model = new ModelAndView("redirect:/checkNf");
		model = new ModelAndView("redirect:/");
		
		if(nfService.addNotification(add)){
			System.out.println("notification added");
		}
		else{
			System.out.println("notification not added");
		}

		return model;
		
	}
	
}
