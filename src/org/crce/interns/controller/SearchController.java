package org.crce.interns.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.crce.interns.model.Company;
import org.crce.interns.model.PersonalProfile;
import org.crce.interns.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
/*
 *Commented by melwyn95
 This class contains 3 methods
 1>welcomeSearch
 2>searchUser
 3>searchCompany
 */
@Controller
public class SearchController {

	@Autowired
	private SearchService searchService;
	
	/*
	This method is used to handle the urlmapping for the searchbar
	*/
	@RequestMapping(value = "/searchHome", method = RequestMethod.GET) 
	public ModelAndView welcomeSearch() {
		System.out.println("searchBar");
		return new ModelAndView("searchbar");
	}
	
	/*
	This method take's a searchString and checks is occurance in the userName filed of userDstails
	*/
	@RequestMapping(value = "/SearchUser", method = RequestMethod.GET) 
	public ModelAndView searchUser(@RequestParam("searchString")String searchString) {
		System.out.println(searchString);
		List<PersonalProfile> userDetailsList = null;
		if (!searchString.equals(""))
			userDetailsList = searchService.searchUser(searchString);	
		Map<String, Object> modelMap = new HashMap<>();
		modelMap.put("userList", userDetailsList);
		return new ModelAndView("searchbar", modelMap);
	}
	
	/*
	This method take's a searchString and checks is occurance in the comnpanyName
	*/
	@RequestMapping(value = "/SearchCompany", method = RequestMethod.GET) 
	public ModelAndView searchCompany(@RequestParam("searchString")String searchString) {
		System.out.println(searchString);
		List<Company> companyList = null;
		if (!searchString.matches("\\s*"))
				companyList = searchService.searchCompany(searchString);
		Map<String, Object> modelMap = new HashMap<>();
		modelMap.put("companyList", companyList);
		return new ModelAndView("searchbar", modelMap);
	}
}
