/*
*
* Author Name: Crystal Cuthinho	
* 
* Filename: ManageUserService.java	
* 
* Description: This service is an interface which only declares method names which are implemented in ManageUserServiceImpl.java
* 
* Functions: addStudent(), addFaculty() ,removeUser() 
*
*/


package org.crce.interns.service;

import org.crce.interns.beans.FacultyBean;
import org.crce.interns.beans.StudentBean;



public interface ManageUserService {

	public void addStudent(StudentBean studentBean);
	public void addFaculty(FacultyBean facultyBean);
	public void removeUser(StudentBean studentBean,String username);
}
