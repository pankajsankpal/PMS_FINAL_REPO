package org.crce.interns.dao;

import org.crce.interns.model.Company;
import org.crce.interns.model.Criteria;

import java.util.List;

import org.crce.interns.beans.CompanyBean;

public interface CompanyDao {
	public void addCriteria(Criteria criteria);
    
	public void addCompany(Company company);
	public List<Company> getCompany();
}
