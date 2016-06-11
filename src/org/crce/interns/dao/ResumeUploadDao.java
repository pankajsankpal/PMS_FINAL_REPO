/*
*
*
* Author Name: Crystal Cuthinho	
* 
* Filename: ResumeUploadDao.java	
* 
* Description: This dao is an interface which only declares method names which are implemented in ResumeUploadDaoImpl.java
* 
* Functions: addNewResume()	
*
*/



package org.crce.interns.dao;

import java.io.IOException;
import java.sql.SQLException;

public interface ResumeUploadDao {

	public void addNewResume(String username,String filePath) throws SQLException, IOException;
}
