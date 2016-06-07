/**
 * Author Name: Andrea Furtado
 * Filename: EligiblityController.java	
 * Classes used by code: EligibilityService
* 
* Description: This controller is used to check eligibility of student
* 
* Functions: criteriaCheck()

 */

package org.crce.interns.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.crce.interns.service.EligibilityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EligibilityController {
	@Autowired
	private EligibilityService E_service;
	
	
	@RequestMapping("/getjob")
    public ModelAndView start() {
        return new ModelAndView("tempform");
    }
	
	
	
	/**
	 * the method check whether the student is eligible and directs to fail or success page accordingly
	 * @param request
	 * @param job_id
	 * @return
	 */
	@RequestMapping("/applyforjob")
	public ModelAndView  criteriaCheck(HttpServletRequest request,@RequestParam(value="job_id")String job_id){
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("userName");
		System.out.println("This is user:"+username+"   and job_id: "+job_id);
	
		int criteria_id=E_service.getCriteriaId(job_id);
		
		if(E_service.checkCriteria(username, criteria_id,job_id))
			return new ModelAndView("eligible");
	
		else
				System.out.println("oopsie!!  you dont meet the criteria ");
				return new ModelAndView("fail");
	}
}
