package org.crce.interns.controller;

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.model.TotalNoOfStudents;
import org.crce.interns.service.ProfileService;
import org.crce.interns.service.StatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HighlightsController {

	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private StatisticsService statisticsService;
	
	@RequestMapping(value="/Statistics", method = RequestMethod.GET)
	public ModelAndView view(HttpServletRequest request) {
		//String year = (String) request.getAttribute("year");
		String year = "2016";
		TotalNoOfStudents total = statisticsService.getTotalNoOfStudents(year);
		ModelAndView model = new ModelAndView("list");
		model.addObject("totalStudents", total);
		return model;
	}

	
	
	@RequestMapping(value="/test-yearwise", method = RequestMethod.GET)
	
	public ModelAndView year(HttpServletRequest request) {
		profileService.listProfessionalProfile("2016");
		return new ModelAndView("list");
	}
	


}
