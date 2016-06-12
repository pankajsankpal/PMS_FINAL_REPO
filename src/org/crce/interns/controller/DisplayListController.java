/**
 * Filename: DisplayListController.java	
 * Classes used by code: DisplayListService
* 
* Description: This controller is used to display a list of files inside a directory structure for student
* 
* Functions: displayCV(), displayCVpage()

 */

package org.crce.interns.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.crce.interns.service.impl.DisplayListService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DisplayListController {

	DisplayListService dsp = new DisplayListService();
	// this method is for displaying the list of cv

	/**
	 * method simply directs to listCV.jsp
	 * 
	 * @return
	 */
	@RequestMapping(value = "/displist")
	public ModelAndView displayCVpage() {
		return new ModelAndView("listCV");
	}

	/**
	 * this method displays list of files within a particular folder in
	 * ascending order
	 * 
	 * @param request
	 * @param folder
	 * @return
	 */

	@RequestMapping(value = "/dispCV")
	public ModelAndView displayCV(HttpServletRequest request, @RequestParam(value = "folder") String folder) {
		String userName = (String) request.getSession().getAttribute("userName");
		String userRole = (String) request.getSession(true).getAttribute("roleName");
		List<String> listFullName = dsp.displayCVList(folder, userName,userRole);
		List<String> list = new ArrayList<String>();
		

		int z = 0;
		List<Integer> indexList = new ArrayList<>();

		for (String x : listFullName) {
			int pos = x.indexOf('-');
			list.add(x.substring(0, pos));
			indexList.add(z);
			z++;
		}

		request.getSession().setAttribute("folderName", folder);
		ModelAndView model = new ModelAndView("listCV");

		model.addObject("actualFileNames", listFullName);
		model.addObject("nameToDisplay", list);
		model.addObject("indexList", indexList);

		return model;
	}
	
	
	
	@RequestMapping(value = "/dispCounselingReport")
	public ModelAndView displayCounselReport(HttpServletRequest request, @RequestParam(value = "folder") String folder) {
		String userName = (String) request.getSession().getAttribute("userName");
		String userRole = (String) request.getSession(true).getAttribute("roleName");
		List<String> listFullName = dsp.displayCVList(folder, userName,userRole);
		List<String> list = new ArrayList<String>();

		int z = 0;
		List<Integer> indexList = new ArrayList<>();
		System.out.println(listFullName);
		for (String x : listFullName) {
			list.add(x);
			indexList.add(z);
			z++;
		}

		request.getSession().setAttribute("folderName", folder);
		ModelAndView model = new ModelAndView("facultyDownloads");

		model.addObject("actualFileNames", listFullName);
		model.addObject("nameToDisplay", list);
		model.addObject("indexList", indexList);

		return model;
	}

}
