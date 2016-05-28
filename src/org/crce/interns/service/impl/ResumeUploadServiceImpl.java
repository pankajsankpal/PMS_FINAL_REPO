package org.crce.interns.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
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

	private String saveDirectory = "C:/Users/Crystal/git/PMS_FINAL_REPO/src/resources/resume/";
	
	public void handleFileUpload(HttpServletRequest request, @RequestParam CommonsMultipartFile fileUpload, String username)
			throws Exception {
		final String fullPath = saveDirectory + fileUpload.getOriginalFilename();
		if (!fileUpload.isEmpty()) {
			
			
			IncorrectFileFormatException e = new IncorrectFileFormatException();
			MaxFileSizeExceededError m = new MaxFileSizeExceededError();
			
			
			//File file = new File(fileUpload.getOriginalFilename());
			final String extension = FilenameUtils.getExtension(fullPath);
				
				
			
			
			if(!(extension.equals("pdf") || extension.equals("docx") || extension.equals("odt")))
				throw e;
			
			//final long size = FileUtils.sizeOf(file);
			final long size = fileUpload.getSize();
			System.out.println(size);
			if(size > 512520)
				throw m;
			
			System.out.println("Saving file: " + fileUpload.getOriginalFilename());
			System.out.println(extension);	
			
			if (!fileUpload.getOriginalFilename().equals(""))
				fileUpload.transferTo(new File(fullPath));
			
				
		}
		
		resumeUploadDao.addNewResume(username,fullPath);
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
