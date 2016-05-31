package org.crce.interns.validators;



import java.io.File;

import org.crce.interns.model.FileUpload;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;



public class FileUploadValidator implements Validator{

	@Override
	public boolean supports(Class clazz) {
		//just validate the FileUpload instances
		return FileUpload.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		FileUpload fileUpload1 = (FileUpload)target;
		/*
		//File file1 = (File) target;
		
		//System.out.println(file1.getFile());
		if(file.getFile().getSize() == 0){
			errors.rejectValue("file", "required.fileUpload");
		}*/
		
		if(fileUpload1.getFile().getSize() == 0){
			System.out.println("empty");
			errors.rejectValue("file", "required.fileUpload");
		}
	}
}