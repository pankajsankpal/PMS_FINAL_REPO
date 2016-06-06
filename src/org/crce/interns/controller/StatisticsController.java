package org.crce.interns.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.crce.interns.beans.PlacementStatisticsBean;
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
		
		PlacementStatisticsBean statisticsBean = new PlacementStatisticsBean();
		
		statisticsBean.setBranch("Computer Engineering");
		statisticsBean.setCompanyId(1010);
		statisticsBean.setCreatedBy((String)request.getSession(true).getAttribute("userName"));
		statisticsBean.setCreatedDate(new Date());
		statisticsBean.setModifiedBy("");
		statisticsBean.setModifiedDate(null);
		statisticsBean.setNoApplied(3);
		statisticsBean.setNoDualPlaced(1);
		statisticsBean.setNoJoined(3);		
		statisticsBean.setTotalNoOfStudents(2);
		statisticsBean.setYear("2016");
		
		
		statisticsService.add(statisticsBean);
		
		return null;		
		
	}
	
	@RequestMapping(value="/viewStatistics", method = RequestMethod.GET)
	public ModelAndView viewStatistics(HttpServletRequest request) {
		
		List<PlacementStatisticsBean> result = 
				statisticsService.list();
		
		
		return new ModelAndView("index");
	}
	
}
