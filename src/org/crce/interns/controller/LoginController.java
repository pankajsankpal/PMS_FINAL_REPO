package org.crce.interns.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.crce.interns.beans.LoginForm;
import org.crce.interns.beans.NotifyForm;
import org.crce.interns.service.CheckRoleService;
import org.crce.interns.service.DirectoryService;
import org.crce.interns.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController extends HttpServlet{

	
	@Autowired
	public LoginService loginService;
	
	@Autowired
	private CheckRoleService crService;
        
        @Autowired
        private DirectoryService directoryService;
        
	@RequestMapping("/")
	public ModelAndView welcome() throws ParseException {
		System.out.println("return model");
                /**
                 * Year changing logic
                 * @author Leon
                 * Starts here
                 * Have taken 25th May(month is 0-based) and 25th July as threshold date
                 * As by this time all placement activities are done
                 * and system is fed with data for the next batch
                 * Works perfectly fine and . If any issues, Please tell me.
                 */
                String startDate = Integer.toString(Calendar.getInstance().get(Calendar.YEAR))+"-04-25";
                String endDate = Integer.toString(Calendar.getInstance().get(Calendar.YEAR))+"-06-25";
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Date d1 = sdf.parse(startDate);
                Date d2 = sdf.parse(endDate);
                /*
                if(d1.compareTo(d2)<0){
                    System.out.println("d1 is after");
                }*/
                //Timestamp basis for logging
                //String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
                Date currentDate = new Date(); //gets current date
                if((currentDate.after(d1)) && (currentDate.before(d2))){
                directoryService.createSystemFolders();
                }
                /**
                 * End of @author Leon's code
                 */
		return new ModelAndView("index");
	}
	

	@RequestMapping(value="/form" , method = RequestMethod.GET)  
  	public ModelAndView showForm(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("Inside Controller");
		LoginForm loginForm = new LoginForm();
		ModelAndView model=null;
		model = new ModelAndView("Login");
		model.addObject("loginForm", loginForm);
		
		return model;	
		
	}
	
	@RequestMapping(value="/logged-out" , method = RequestMethod.GET)  
  	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("Inside Controller");
		LoginForm loginForm = new LoginForm();
		ModelAndView model=null;
		
		request.getSession(true).invalidate();
		
		model = new ModelAndView("Login");
		model.addObject("loginForm", loginForm);
		
		return model;	
		
	}
	
	@RequestMapping(value="/logged" ,method = RequestMethod.POST)
	public ModelAndView processForm(HttpServletRequest request, HttpServletResponse response, @Valid LoginForm loginForm, BindingResult result) {

		System.out.println("Inside Controller");
		ModelAndView model=null;	
		/*if (result.hasErrors()) {
			return "loginform";
		}*/
		
		String role=loginService.checkLogin(loginForm.getUserName(),loginForm.getPassword());
			
		System.out.println("Role is:" +role);
	
		
		if(role.equals("Student")){
			
			model = new ModelAndView("redirect:/viewprofile");
			
			//model = new ModelAndView("redirect:/viewprofile");

			
			String id =  request.getParameter("userName");
		    System.out.println("UserName: " + id); // Here it prints the username properly
		    
		    request.getSession(true).setAttribute("userName", id );
		    request.getSession(true).setAttribute("roleId", "1" );
		    
		    // System.out.println(session.getAttribute("userName"));
		    System.out.println("Logged in as what????: " + id);
		    boolean b=loginService.getNotification(loginForm.getUserName());
		    model.addObject("b", b);
		    model.addObject("u", id);
		    
		    return model;
		}
		
		else if(role.equals("FacultyTPC"))
		{
			model = new ModelAndView("FacultyTPC");
			NotifyForm notify=new NotifyForm();
			model.addObject("notify", notify);
			
			String name =  request.getParameter("userName");
		    System.out.println("UserName: " + name); // Here it prints the username properly
		    
		    request.getSession(true).setAttribute("userName", name );
		    request.getSession(true).setAttribute("roleId", "4" );
		    
		    System.out.println("Logged in as what????: " + name);
		    
			return model;
		}
		else if(role.equals("StudentTPC"))
		{
			model = new ModelAndView("StudentTPC");
			
			String name =  request.getParameter("userName");
		    System.out.println("UserName: " + name); // Here it prints the username properly
		    
		    request.getSession(true).setAttribute("userName", name );
		    request.getSession(true).setAttribute("roleId", "3" );
		    
		    System.out.println("Logged in as what????: " + name);
		    boolean b=loginService.getNotification(loginForm.getUserName());
		    model.addObject("b", b);
			return model;
		}
		else if(role.equals("TPO"))
		{
			model = new ModelAndView("TPO");
			
			String name =  request.getParameter("userName");
		    System.out.println("UserName: " + name); // Here it prints the username properly
		    
		    request.getSession(true).setAttribute("userName", name );
		    request.getSession(true).setAttribute("roleId", "5" );
		    
		    System.out.println("Logged in as what????: " + name);
			return model;
		}
		else if(role.equals("Admin"))
		{
			model = new ModelAndView("Admin");
			
			String name =  request.getParameter("userName");
		    System.out.println("UserName: " + name); // Here it prints the username properly
		    request.getSession(true).setAttribute("userName", name );
		    request.getSession(true).setAttribute("roleId", "6" );
		 
		    
		    System.out.println("Logged in as what????: " + name);
			return model;
		}
		else{
			result.rejectValue("userName","invaliduser");
			model = new ModelAndView("Login");
			return model;
		}
	}
	
	@RequestMapping(value="/notify" ,method = RequestMethod.POST)
	public ModelAndView notifyForm(HttpServletRequest request, HttpServletResponse response,@Valid NotifyForm notify, BindingResult result,
			Map model) 
	{
		
		String roleId=(String)request.getSession(true).getAttribute("roleId");
		String user=(String)request.getSession(true).getAttribute("userName");
		
		String name=loginService.checkSR(user);
		
		
		if(!(crService.checkRole("FacultyTPCNotify", roleId)&&name.equals("702")))
			return new ModelAndView("403");
		else
		{
			String userName=notify.getUserName();
			int update=loginService.getStudentByid(userName);

			//System.out.println("hello");
			if(update==0)
			{
				model.put("notify",notify);
				return new ModelAndView("FacultyTPC");
			}
			else
				return new ModelAndView("success");
		}
	}
	

}
