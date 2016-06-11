package org.crce.interns.controller;

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.service.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HighlightsController {

	@Autowired
	private ProfileService profileService;
	
	@RequestMapping(value="/Statistics", method = RequestMethod.GET)
	
	public ModelAndView login(HttpServletRequest request) {
	
		return new ModelAndView("list");
	}

	@RequestMapping(value="/test-yearwise", method = RequestMethod.GET)
	
	public ModelAndView year(HttpServletRequest request) {
		profileService.listProfessionalProfile("2016");
		return new ModelAndView("list");
	}




}
