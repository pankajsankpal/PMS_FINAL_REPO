package org.crce.interns.service;

public interface FileGeneratorService {

	public String download();
	
	public String[] getParameters(Object bean);
	
	public void setType(String type);
	
}
