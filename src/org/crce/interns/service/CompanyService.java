package org.crce.interns.service;

import java.util.List;

import org.crce.interns.beans.CompanyBean;
import org.crce.interns.model.Company;
import org.crce.interns.model.Criteria;

public interface CompanyService {

	public void addCompany(Company company);
	public void addCriteria(Criteria criteria);
	   
	public List<CompanyBean> getCompany();
}
