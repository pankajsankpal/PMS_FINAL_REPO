/*
*
* Author Name:Anu Anna Issac
* 
* Filename:CompanyController.java	
* 	
* Classes used by code:CompanyService,FeedbackValidator,Feedback
* 
* Tabes used:Company
* 
* Description: This controller is used to help the admin add  details of the companies.
* 
*Functions:saveCompany,addCompany,welcome,prepareCompanyModel
*
*/

package org.crce.interns.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.crce.interns.beans.CompanyBean;
import org.crce.interns.beans.CriteriaBean;
import org.crce.interns.model.Company;
import org.crce.interns.model.Criteria;
import org.crce.interns.service.CompanyService;
import org.crce.interns.service.CriteriaService;
import org.crce.interns.validators.CompanyFormValidator;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Controller
public class CompanyController {

	@Autowired
    CompanyFormValidator companyValidator;
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired 
	private CriteriaService criteriaService;
	/*
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcome() {
		System.out.println("HELLO");
		return new ModelAndView("index");
	}
	*/
	 private Company prepareCompanyModel(CompanyBean companyBean){
			Company company = new Company();
			company.setCompany_address(companyBean.getCompany_address());
			company.setCompany_name(companyBean.getCompany_name());
			return company;
		}
	 
	 
	 @RequestMapping(value = "/addCompany", method = RequestMethod.GET)
		public ModelAndView addCompany(Model model) {
		 
		 try{
		 CompanyBean companyBean=new CompanyBean();
		 model.addAttribute("companyBean",companyBean);
			System.out.println("in controller1");
			return new ModelAndView("addCompany");
			
		 }
		 catch(Exception e){
				System.out.println(e);

				ModelAndView model1=new ModelAndView("500");
				model1.addObject("message", "Your session has timed out. Please login again");
		 		//model.addObject("url", "form");

				return model1;
			}

		}
	 @RequestMapping(value = "/saveCompany", method = RequestMethod.POST)
		public ModelAndView saveCompany(  HttpServletRequest request,@ModelAttribute("companyBean") CompanyBean companyBean, 
				BindingResult result) {
		 
		 try{
		 companyValidator.validate(companyBean, result);
			if (result.hasErrors()) {
		System.out.println("Error in form");
     
     return new ModelAndView("addCompany");
         }
			Company company = prepareCompanyModel(companyBean);
			HttpSession session=request.getSession();
			String user=(String)session.getAttribute("userName");
			System.out.println(user);
			
			//this was giving problem so commented @melwyn95
			companyService.addCompany(user,company);

//			return new ModelAndView("companysuccess");

			return new ModelAndView("redirect:/addCompany");
         
		
	 }
	 catch(Exception e){
			System.out.println(e);

			ModelAndView model1=new ModelAndView("500");
			model1.addObject("message", "Your session has timed out. Please login again");
	 		model1.addObject("url", "form");

			return model1;
		}


}
	 
	 
	 //////////////////////////////////////////////////////////////////////////////////////////////////////
	 //pankaj modified following to make company images fade
	 
		@RequestMapping(value = "/getValuesToFed")
		public @ResponseBody 
			String giveImageValue() {
			
			System.out.println("inside values... ");
			int totalImg=8; //total number of images will come here..
			int fadeImg;
			
			JsonArray jarry= new JsonArray();
			for(int i=0;i<totalImg;i++){
				fadeImg=i%2;		//this is 0-1 logic for temporary purpose, here actual logic will come for the image to fade
				System.out.println("fadeImg: "+fadeImg);
				
				
				JsonObject jobj= new JsonObject();
				jobj.addProperty("ImagesToFade", fadeImg);
				
				jarry.add(jobj);
			}
			
			
			
			//return mode;
			System.out.println("String representation: "+ jarry.toString());
			return jarry.toString();
		}
	 
}
