package org.crce.interns.controller;
import java.util.ArrayList;
import java.util.List;
import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserCompany;
import org.crce.interns.service.ManageApplicantsService;
import org.crce.interns.validators.AddApplicantsValidator;
import org.crce.interns.validators.DeleteApplicantsValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


/**
*
* @author Rashmi
* Task: Adds/Deletes Applicant entries from list of applicants for a job
* Dependency: ManageApplicantsService.java
*/


@Controller("manageUsersController")
public class ManageApplicantsController {

	@Autowired
	private ManageApplicantsService crudService;

	@Autowired
	@Qualifier("addApplicantsValidator")
	private AddApplicantsValidator addApplicantsValidator;
	
	@Autowired
	@Qualifier("deleteApplicantsValidator")
	private DeleteApplicantsValidator deleteApplicantsValidator;
	
	@RequestMapping(value = "/manage.html", method = RequestMethod.GET)
	public ModelAndView gotomanagelist() {
		ModelAndView model = null;
		model = new ModelAndView("manage-list");
		return model;
	}
	
//	@RequestMapping(value = "/view.html", method = RequestMethod.GET)
	
	@RequestMapping(value = "/view-candidate.html", method = RequestMethod.GET)
	public ModelAndView gotoviewcandidate() {
		ModelAndView model = null;
		model = new ModelAndView("view-candidate");
		return model;
	}

	// @SuppressWarnings("unused")

	@RequestMapping(value = "/viewclist.html", method = RequestMethod.POST)
	public ModelAndView viewcandidate(@RequestParam("company") String company) {
		ModelAndView model;

		System.out.println("inside controller"+company);
		 
		model = new ModelAndView("candidate-list");
		 List<UserCompany> userList=new ArrayList<UserCompany>();
		 userList.addAll(crudService.retreiveDetails(company));
		 System.out.println("inside controller..........");
		// for(UserCompany d:userList) System.out.println(d.getUsername()+" "+d.getCompany());
		 model.addObject("userList",userList);
		return model;
	}


//	@RequestMapping(value = "/managelist.html", method = RequestMethod.POST )

	@RequestMapping(value = "/showlist.html", method = RequestMethod.POST )

	public ModelAndView cruddetails(@RequestParam(value = "option") String option) {
		ModelAndView model;
		UserCompanyBean userBean = new UserCompanyBean();
		
		if (option.equals("Add"))
			model = new ModelAndView("add-candidate");
		else if (option.equals("Delete"))
			model = new ModelAndView("delete-candidate");
		else
			model = null;
		 model.addObject("userBean",userBean);
		return model;
	}

	@RequestMapping(value = "/addcandidate.html", method = RequestMethod.POST)
	public ModelAndView addcandidate(@ModelAttribute("userBean") UserCompanyBean userBean, BindingResult bindingResult) {
		ModelAndView model;

		String msg="";
		addApplicantsValidator.validate(userBean, bindingResult);
		
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			model = new ModelAndView("add-candidate");
		} else{
			int c=crudService.createDetails(userBean);
			if(c==1) {
				model=new ModelAndView("add-candidate");
				msg+="This entry already exists. No Worries!";
				model.addObject("msg",msg);
			}
			else if(c==2){
				model=new ModelAndView("add-candidate");
				msg+="This company isn't enrolled with us. (Something wrong with company name?)";
				model.addObject("msg",msg);
				
			}
			else if(c==3){
				model=new ModelAndView("add-candidate");
				msg+="This user account doesn't exist. (Something wrong with user name?)";
				model.addObject("msg",msg);
				
			}
			else
			model = new ModelAndView("add-success");
		}
		return model;

	//	UserCompanyBean userBean = new UserCompanyBean();
	//	userBean.setUsername(name);
	//	userBean.setCompany(company);
	//	System.out.println(userBean.getUsername());
/*
		crudService.createDetails(userBean);
		addApplicantsValidator.validate(userBean, bindingResult);
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			model = new ModelAndView("add-candidate");
		} else
		model = new ModelAndView("add-success");
		//model.addAttribute(userBean);
		return model;
		
	*/	

	}

	@RequestMapping(value = "/deletecandidate.html", method = RequestMethod.POST)
	public ModelAndView deletecandidate(@ModelAttribute("userBean") UserCompanyBean userBean, BindingResult bindingResult) {
		ModelAndView model;
		int c=0;
		String msg="";
		deleteApplicantsValidator.validate(userBean, bindingResult);
	
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			model = new ModelAndView("delete-candidate");
		} else{
			
			c=crudService.deleteDetails(userBean);

			if(c==2){
				model=new ModelAndView("delete-candidate");
				msg+="This company isn't enrolled with us. (Something wrong with company name?)";
				model.addObject("msg",msg);
				
			}
			else if(c==3){
				model=new ModelAndView("delete-candidate");
				msg+="This user account doesn't exist. (Something wrong with user name?)";
				model.addObject("msg",msg);
				
			}
			else
				model = new ModelAndView("delete-success");
		}
			return model;
/*
		//UserCompanyBean userBean = new UserCompanyBean();
		//UserCompanyId uci=new UserCompanyId();
		//uci.setUsername(name);
	//	uci.setCompany_id();
	//	userBean.setId(uci);
		//userBean.setUsername(name);
		//userBean.setCompany(company);
		crudService.deleteDetails(userBean);
		addApplicantsValidator.validate(userBean, bindingResult);
		if (bindingResult.hasErrors()) {
			System.out.println("Binding Errors are present...");
			model = new ModelAndView("delete-candidate");
		} else
		model = new ModelAndView("delete-success");
		return model;
*/
	}

}
