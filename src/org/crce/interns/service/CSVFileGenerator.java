package org.crce.interns.service;

import java.util.List;

import org.crce.interns.beans.FileReader;

public interface CSVFileGenerator extends FileGeneratorService{
	
	final public String type="CSV";
	
	@Override
	public String download();
	
	@Override
	public String[] getParameters();
	
	@Override
	public void setType(String type);
	
	public void generateCSV(FileReader f, Object bean,List<Object> list);

}
