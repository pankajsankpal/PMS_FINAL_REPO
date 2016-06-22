package org.crce.interns.service.impl;

import java.util.Arrays;
import java.util.List;

import org.crce.interns.beans.ApplicantCSVBean;
import org.crce.interns.beans.FileReader;
import org.crce.interns.service.CSVFileGenerator;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Service("NfService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class CSVFileGeneratorImpl implements CSVFileGenerator {

	
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	
	public String download() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	
	public String[] getParameters(Object bean) {
		// TODO Auto-generated method stub
		String[] param;
		StringBuilder result= new StringBuilder("NAME");
		
		if(bean.getClass().getName().equals("org.crce.interns.beans.ApplicantCSVBean")){
			
			ApplicantCSVBean a = (ApplicantCSVBean) bean;
					
			
			if(a.isBranch()){
				result.append(",BRANCH");
			}
					
			
			if(a.isEmailId()){
				result.append(",EMAIL");
			}
			
			if(a.isMobileNo()){
				result.append(",CONTACT");
			}
					
			if(a.isSsc_per()){
				result.append(",SSC");
			}
					
					
			if(a.isHscOrDip()){
				result.append(",HSC");
			}	
					
			if(a.isDeg()){
				result.append(",CGPA");
			}
			
			
			if(a.isCorrespondenceAddress()){
				result.append(",CORRESPONDENCE ADDRESS");
			}
			
		}
		
		param = new String(result).split(",");
		
		return param;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	
	public void setType(String type) {
		// TODO Auto-generated method stub
		

	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	
	public void generateCSV(FileReader f, Object bean, List<List<String>> list) {
		// TODO Auto-generated method stub

		String[] param = getParameters(bean);
		System.out.println(Arrays.asList(param).toString());
		
	}

}
