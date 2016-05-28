/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.beans;

import java.util.Calendar;

import javax.servlet.http.HttpSession;

/**
 *
 * @author Leon
 */
public class DirectoryPathBean {
	
	
	
    int year = Calendar.getInstance().get(Calendar.YEAR);
    private final String rootContext="C:\\PMS\\"+year;
    private final String studentFolder=rootContext + "\\Users\\Student";
    private final String facultyFolder=rootContext + "\\Users\\Faculty";
    private final String tpoFolder = rootContext + "\\Users\\TPO";
    private final String adminFolder = rootContext + "\\Users\\Admin";
    private final String companyFolder = rootContext + "\\Users\\Company";
    private final String csvFolder = rootContext + "\\System\\CSV";
    private final String logFolder = rootContext + "\\System\\Logs";
    private final String emailFolder= rootContext + "\\System\\Email_Temp";
    
    public String getRootContext(){
        return rootContext;
    }
    
    public String getStudentFolder(){
        return studentFolder;
    }

    public String getFacultyFolder() {
        return facultyFolder;
    }

    public String getTpoFolder() {
        return tpoFolder;
    }

    public String getAdminFolder() {
        return adminFolder;
    }

    public String getCompanyFolder() {
        return companyFolder;
    }

    public String getCsvFolder() {
        return csvFolder;
    }

    public String getLogFolder() {
        return logFolder;
    }

    public String getEmailFolder() {
        return emailFolder;
    }
    
    
}
