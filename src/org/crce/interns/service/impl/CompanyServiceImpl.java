package org.crce.interns.service.impl;
import java.util.*;
import org.crce.interns.beans.*;
import org.crce.interns.dao.CompanyDao;
import org.crce.interns.model.Company;
import org.crce.interns.model.Criteria;
import org.crce.interns.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("companyService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class CompanyServiceImpl implements CompanyService {

	//static int company_id=1,criteria_id=1;
	@Autowired
	private CompanyDao companyDao;
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)	
	public void addCompany(Company company) {
		companyDao.addCompany(company);
			}
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addCriteria(Criteria criteria) {
		//criteria.setCriteria_id(criteria.get);
		companyDao.addCriteria(criteria);
		//System.out.println(criteria_id);
		
	}
	
	
	@Override  
	 public List<CompanyBean> getCompany() {  
	  return companyDao.getCompany();  
	 }  
	
}
