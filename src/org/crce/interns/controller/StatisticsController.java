package org.crce.interns.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.beans.PlacementStatisticsBean;
import org.crce.interns.beans.PlacementStatsBean;
import org.crce.interns.model.TotalNoOfStudents;
import org.crce.interns.service.CheckRoleService;
import org.crce.interns.service.StatisticsService;
import org.crce.interns.service.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StatisticsController {

	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private CheckRoleService crService;
	
	@Autowired
	private StatisticsService statisticsService;
	
	@RequestMapping(value="/addStatistics", method = RequestMethod.GET)
	public ModelAndView addStatistics(HttpServletRequest request) {
		
		PlacementStatsBean statisticsBean = new PlacementStatsBean();
		
		statisticsBean.setCompanyId(1010);		
		statisticsBean.setYear("2016");

		statisticsService.addOnce(statisticsBean);
		
		return null;		
		
	}
	
	@RequestMapping(value="/viewStatistics", method = RequestMethod.GET)
	public ModelAndView viewStatistics(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView("viewStats");
		
		//statisticsService.calculateTotal("2016");
		
		Map<Integer, Map<String, PlacementStatsBean>> result = 
		statisticsService.list();
		
		//model.addObject("companyMap", statisticsService.getCompanyMap());
		model.addObject("table", result);
		
		return model;
	}
	
	@RequestMapping(value="/calculateTotalStudents", method = RequestMethod.GET)
	public ModelAndView calculateTotalStudents(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView("stats");
		statisticsService.calculateTotal("2016");
		return model;
	}
}
