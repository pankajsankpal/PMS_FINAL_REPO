package org.crce.interns.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HighlightsController {

@RequestMapping(value="/Highlights", method = RequestMethod.GET)
	
	public ModelAndView login(HttpServletRequest request) {
	
		return new ModelAndView("list");
	}
}
