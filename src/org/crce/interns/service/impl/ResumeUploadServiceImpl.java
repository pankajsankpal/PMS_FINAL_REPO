/*
*
* Author Name: Crystal Cuthinho	
* 
* Filename: ResumeUploadServiceImpl.java	
* 	
* Classes used by code: ResumeUploadService, ResumeUploadDao,FileUploadValidator,DirectoryPathBean, IncorrectFileFormatException,MaxFileSizeExceededError
* 
* Tabes used: Loader_schema.loader,User_schema.userdetails,User_schema.personal_profile,User_schema.professional_profile,User_schema.qualification
* 
* Description: This service implementation is used to implement the methods in ResumeUploadService.java
* 
* Functions: handleFileUpload()	,displayCVList()
*
*/



package org.crce.interns.service.impl;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.crce.interns.beans.DirectoryPathBean;
import org.crce.interns.dao.ResumeUploadDao;
import org.crce.interns.exception.IncorrectFileFormatException;
import org.crce.interns.exception.MaxFileSizeExceededError;
import org.crce.interns.service.ResumeUploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;



@Service("resumeUploadService")
public class ResumeUploadServiceImpl implements ResumeUploadService {

	@Autowired
	private ResumeUploadDao resumeUploadDao;

	DirectoryPathBean directoryPathBean = new DirectoryPathBean();    
	
	public void handleFileUpload(HttpServletRequest request, @RequestParam CommonsMultipartFile fileUpload, String username)
			throws Exception {
		
		String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
		
		//get the path for saving the resume
		String saveDirectory = directoryPathBean.getStudentFolder() + "\\" + username + "\\Resume\\";
		

		final String fullPath = saveDirectory + fileUpload.getOriginalFilename();
		int lastDot = fullPath.lastIndexOf('.');
		if (!fileUpload.isEmpty()) {
			
			IncorrectFileFormatException e = new IncorrectFileFormatException();
			MaxFileSizeExceededError m = new MaxFileSizeExceededError();
			
			//File file = new File(fileUpload.getOriginalFilename());
			final String extension = FilenameUtils.getExtension(fullPath);
				
			// throws IncorrectFileFormatException if the uploaded file is not of the desired extension/type
			if(!(extension.equals("pdf") || extension.equals("doc") || extension.equals("docx") || extension.equals("odt")))
				throw e;
			
			//throws MaxFileSizeExceededError if the uploaded file exceeds the expected size limit
			final long size = fileUpload.getSize();
			System.out.println(size);
			if(size > 512520)
				throw m;
			
			
			System.out.println(extension);	
			
			if (!fileUpload.getOriginalFilename().equals("")){
				File f1 = new File(fullPath);
							
				//newName : It is the entire path of the uploaded file with the timestamp of upload appended
				String newName = fullPath.substring(0,lastDot) + "-" + timeStamp + fullPath.substring(lastDot);
				File f2 = new File(newName);
				System.out.println("Saving file: " + newName);
				
				f1.renameTo(f2);
				fileUpload.transferTo(f2);
				//call to the dao 
				resumeUploadDao.addNewResume(username,newName);
			}
					
				
		}
		
		
	}
	
	public List<String> displayCVList(String pathname){
		 List<String> results = new ArrayList<String>();


		 File[] files = new File("pathname").listFiles();
		 //If this pathname does not denote a directory, then listFiles() returns null. 

		 for (File file : files) {
		     if (file.isFile() && file.getName().endsWith(".csv")|| file.getName().endsWith(".pdf") || file.getName().endsWith(".doc") || file.getName().endsWith(".docx")) {
		         results.add(file.getName());
		     }
		 }
		       //  System.out.println(results);
		         return results;
	}
}
