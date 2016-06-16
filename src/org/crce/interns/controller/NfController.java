/**
 * @author Nevil Dsouza ZNevzz
 *	Description: handles all notification related functions
 *	View pages : nftest.jsp
 *	DEPENDENCIES: 
 *	beans-	NotificationBean,PersonalProfileBean;ProfessionalProfileBean;UserDetailsBean;
 *	service-CheckRoleService;NfService;ProfileService;
 */

package org.crce.interns.controller;


import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.crce.interns.beans.NotificationBean;
import org.crce.interns.beans.PersonalProfileBean;
import org.crce.interns.beans.ProfessionalProfileBean;
import org.crce.interns.beans.UserDetailsBean;
import org.crce.interns.model.PersonalProfile;
import org.crce.interns.service.CheckRoleService;
import org.crce.interns.service.ConstantValues;
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
import org.crce.interns.service.impl.EmailNotificationServiceImpl;

@Controller
public class NfController implements ConstantValues{
	
	@Autowired
	private NfService nfService;
	
	@Autowired
	private ProfileService profileService;
	
        @Autowired
        private EmailNotificationServiceImpl emailNotificationService;

        
	//-----------------------------------------------------------------------------------------------
	@RequestMapping(value="/notifications", method = RequestMethod.GET)
	public ModelAndView checkNf(HttpServletRequest request) {
	try{
		System.out.println("Inside NfController");
		//nfService.checkNf();
		
		String userName=(String)request.getSession(true).getAttribute("userName");
		String roleId=(String)request.getSession(true).getAttribute("roleId");		
		
		UserDetailsBean userDetailsBean= new UserDetailsBean();			
		ProfessionalProfileBean professionalProfileBean=new ProfessionalProfileBean();
		PersonalProfileBean personalProfileBean=new PersonalProfileBean();
	
	
		userDetailsBean.setUserName(userName);
		professionalProfileBean.setUserName(userName);
		personalProfileBean.setUserName(userName);
	
	
		userDetailsBean = profileService.getProfile(userDetailsBean);
		professionalProfileBean = profileService.getProfile(professionalProfileBean);
		personalProfileBean = profileService.getProfile(personalProfileBean);	
	
		List<NotificationBean> nfList = nfService.getNf(userDetailsBean, professionalProfileBean, personalProfileBean);
		nfList = nfService.sortByDate(nfList);
		
		
		ModelAndView model=null;
		
		model = new ModelAndView("StudentNoti");
		model.addObject("nf",nfList);
		
		return model;
	}
	catch(Exception e){
		System.out.println(e);
		ModelAndView model=new ModelAndView("500");
		model.addObject("exception", "/checkNf");
		return model;
	}
	}
	
	//------------------------------------------------------------------------------------------------	
	@RequestMapping(value="/addNf", method = RequestMethod.POST)
	public ModelAndView addNf(HttpServletRequest request) {
	try{
		
	
		NotificationBean add=new NotificationBean(); 
		add.setType("USER");
		add.setCategory("TEST");
		add.setUrl("/");
		add.setUserOrGroupId("7000");
		add.setDateTime(new SimpleDateFormat("dd-MM-yyyy hh:mm a").format(new Date()));
		add.setMessage("ADDED NOTIFICATION 2. Congratulations");
		
		ModelAndView model=null;
		//model = new ModelAndView("redirect:/checkNf");
		model = new ModelAndView("redirect:/notifications");
		
		if(nfService.addNotification(add)){
			System.out.println("notification added");
		}
		else{
			System.out.println("notification not added");
		}

		return model;
	}
	catch(Exception e){
		System.out.println(e);
		ModelAndView model=new ModelAndView("500");
		model.addObject("exception", "/addNf");
		return model;
	}
		
	}
	
	//------------------------------------------------------------------------------------------------
	@RequestMapping("/checkNewNoti")
	public @ResponseBody String looseNotification(HttpServletRequest request){
	try{
		System.out.println("Inside NfController");
		//nfService.checkNf();
		//String id="7000";
		
		if(request.getSession(true).getAttribute("oldNoti") == null){
			request.getSession(true).setAttribute("oldNoti", 0);
		}
		else{
			request.getSession(true).setAttribute("oldNoti",request.getSession(true).getAttribute("newNoti"));
				
	
//			System.out.println(request.getSession(true).getAttribute("oldNoti")+"- "+request.getSession(true).getAttribute("newNoti"));
		}
		
		String userName=(String)request.getSession(true).getAttribute("userName");
		String roleId=(String)request.getSession(true).getAttribute("roleId");		
		
		UserDetailsBean userDetailsBean= new UserDetailsBean();			
		ProfessionalProfileBean professionalProfileBean=new ProfessionalProfileBean();
		PersonalProfileBean personalProfileBean=new PersonalProfileBean();
	
	
		userDetailsBean.setUserName(userName);
		professionalProfileBean.setUserName(userName);
		personalProfileBean.setUserName(userName);
	
	
		userDetailsBean = profileService.getProfile(userDetailsBean);
		professionalProfileBean = profileService.getProfile(professionalProfileBean);
		personalProfileBean = profileService.getProfile(personalProfileBean);	
	
		List<NotificationBean> nfList = nfService.getNf(userDetailsBean, professionalProfileBean, personalProfileBean);
		
		//System.out.println(nfList.get(0).getMessage());
		
		nfList = nfService.sortByDate(nfList);
                
		request.getSession(true).setAttribute("newNoti", nfList.size());
		
		
               // NotificationBean notificationBean = new NotificationBean();
                //emailNotificationService.sendEmailNotification(
                	//	notificationBean.getUserOrGroupId(),notificationBean.getCategory(),notificationBean.getMessage());

	
		Map<String,String> result = new HashMap<String,String>();
		result.put("nfList", nfList.toString());
		result.put("oldNoti", request.getSession(true).getAttribute("oldNoti").toString());
		result.put("newNoti", request.getSession(true).getAttribute("newNoti").toString());
		
		System.out.println("old: "+request.getSession(true).getAttribute("oldNoti").toString()+"new: "+request.getSession(true).getAttribute("newNoti").toString());
				
		return new Gson().toJson(result);
	}
	catch(Exception e){
		System.out.println("Exception is "+e);
		//ModelAndView model=new ModelAndView("500");
		//model.addObject("exception", "/viewprofile");
		return "exception at looseNotification";
	}
	}
	

	@RequestMapping("/onNotiCick")
	public @ResponseBody String checkNewNoti(HttpServletRequest request){
		
		String timestamp = new SimpleDateFormat("dd-MM-yyyy hh:mm a").format(new Date());
		//request.getSession(true).setAttribute("notiClick", new SimpleDateFormat("dd-MM-yyyy hh:mm a").format(new Date()));
		Integer old = (Integer)request.getSession(true).getAttribute("newNoti");
		request.getSession(true).setAttribute("oldNoti", old);
		request.getSession(true).setAttribute("notiClick", timestamp);
		

		//result.
		//return timestamp;
		
		Map<String,String> result = new HashMap<String,String>();
		result.put("timestamp", timestamp);
		result.put("oldNoti", request.getSession(true).getAttribute("oldNoti").toString());
		result.put("newNoti", request.getSession(true).getAttribute("newNoti").toString());
		
		return new Gson().toJson(result);
	}
	
	// @pankaj added following for notification
	//--------------------------------------------------------------------

	@RequestMapping("/StuNoti")
	public String StudentNotification() {
		return "nftest";
	}

	//------------------------------------------------------------------------------------------------
	
	@RequestMapping(value="/addNfApply", method = RequestMethod.GET)
	public ModelAndView addNfForJobApply(HttpServletRequest request) {
	try{
		
		ModelAndView model=null;
		//model = new ModelAndView("redirect:/checkNf");
		model = new ModelAndView("redirect:/notifications");
		
		
		if(nfService.addNotificationForJobApply(TCS, "7001")){
			System.out.println("notification added");
		}
		else{
			System.out.println("notification not added");
		}
		
		nfService.checkNf();
		return model;

		
	}
	catch(Exception e){
		System.out.println(e);
		ModelAndView model=new ModelAndView("500");
		model.addObject("exception", "/addNf");
		return model;
	}
	}

	//------------------------------------------------------------------------------------------------	
	@RequestMapping(value="/addNfPost", method = RequestMethod.GET)
	public ModelAndView addNfForJobPost(HttpServletRequest request) {
	try{
		
		ModelAndView model=null;
		//model = new ModelAndView("redirect:/checkNf");
		model = new ModelAndView("redirect:/checkNf");
		
		
		if(nfService.addNotificationForJobPost(DIRECTI)){
			System.out.println("notification added");
		}
		else{
			System.out.println("notification not added");
		}
		
		nfService.checkNf();
		
		return model;

		
	}
	catch(Exception e){
		System.out.println(e);
		ModelAndView model=new ModelAndView("500");
		model.addObject("exception", "/addNf");
		return model;
	}
	}
	//-----------------------------------------------------------------------------------------------
	@RequestMapping(value="/addNfEvent", method = RequestMethod.GET)
	public ModelAndView addNfForEvent(HttpServletRequest request) {
	try{
		
		ModelAndView model=null;
		//model = new ModelAndView("redirect:/checkNf");
		model = new ModelAndView("redirect:/checkNf");
		
		
		if(nfService.addNotificationForEvent(TCS)){
			System.out.println("notification added");
		}
		else{
			System.out.println("notification not added");
		}
		
		nfService.checkNf();
		
		return model;

		
	}
	catch(Exception e){
		System.out.println(e);
		ModelAndView model=new ModelAndView("500");
		model.addObject("exception", "/addNf");
		return model;
	}
	}

	
	
	
}


