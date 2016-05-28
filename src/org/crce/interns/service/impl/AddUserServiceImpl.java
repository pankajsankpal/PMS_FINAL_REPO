package org.crce.interns.service.impl;


import java.io.File;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.crce.interns.beans.DirectoryPathBean;
import org.crce.interns.dao.AddUserDao;
import org.crce.interns.exception.IncorrectFileFormatException;
import org.crce.interns.exception.MaxFileSizeExceededError;
import org.crce.interns.service.AddUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;



@Service("addUserService")
public class AddUserServiceImpl implements AddUserService {

	@Autowired
	private AddUserDao addUserDao;
	

        DirectoryPathBean directoryPathBean = new DirectoryPathBean();
	//private String saveDirectory = directoryPathBean.getCsvFolder()+"\\";
        

	public void handleFileUpload(HttpServletRequest request, @RequestParam CommonsMultipartFile fileUpload)
			throws Exception {
		
		String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
		String saveDirectory = directoryPathBean.getCsvFolder() + "\\"  + timeStamp + "\\";
		
		 boolean created = false;
		File files = new File(saveDirectory);
        if (!files.exists()) {
            System.out.println("Something doesnt exist");
            if (files.mkdirs()) {
                System.out.println("created");
                created = true;
            } else {
                created = false;
            }

        }
		final String fullPath = saveDirectory + fileUpload.getOriginalFilename();
		if (!fileUpload.isEmpty()) {

			
			IncorrectFileFormatException e = new IncorrectFileFormatException();
			MaxFileSizeExceededError m = new MaxFileSizeExceededError();
			
			
			//File file = new File(fileUpload.getOriginalFilename());
			final String extension = FilenameUtils.getExtension(fullPath);
				
				
			
			
			if(!(extension.equals("csv")))
				throw e;
			
			//final long size = FileUtils.sizeOf(file);
			final long size = fileUpload.getSize();
			System.out.println(size);
			if(size > 1212520)
				throw m;
			
			System.out.println("Saving file: " + fileUpload.getOriginalFilename());
			System.out.println(extension);	
			
			if (!fileUpload.getOriginalFilename().equals(""))

				fileUpload.transferTo(new File(saveDirectory + fileUpload.getOriginalFilename()));

		}
		addUserDao.loadCopyFile("loader_schema.loader",timeStamp);

	}
	
	
}
