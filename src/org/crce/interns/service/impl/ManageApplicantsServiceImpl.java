package org.crce.interns.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.dao.ManageApplicantsDao;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserCompany;
import org.crce.interns.service.ManageApplicantsService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

//import org.crce.interns.service;
@Service("crudService")
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class ManageApplicantsServiceImpl implements ManageApplicantsService{
	@Autowired
	private ManageApplicantsDao crudDao;
	public void createDetails(UserCompanyBean userBean){
		UserCompany user=new UserCompany();
		BeanUtils.copyProperties(userBean, user);
		//System.out.println("Service "+user.getUsername()+user.getCompany_id());
		crudDao.createDetails(user);
	}
	
	@SuppressWarnings("unchecked")
	public List<UserCompany> retreiveDetails(String company){
		List<UserCompany> userList=new ArrayList<UserCompany>();
		userList.addAll(crudDao.retreiveDetails(company));
		return userList;
	}
	
	public List<Company> retrieveCompany_id(){
		List<Company> list=new ArrayList<Company>();
		list.addAll(crudDao.retrieveCompany_id());
		return list;
	}
	public void deleteDetails(UserCompanyBean userBean){
		UserCompany user=new UserCompany();
		BeanUtils.copyProperties(userBean, user);
		crudDao.deleteDetails(user);
	}


}
