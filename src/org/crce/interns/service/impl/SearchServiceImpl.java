package org.crce.interns.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.crce.interns.dao.SearchDao;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserDetails;
import org.crce.interns.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("searchService")
public class SearchServiceImpl implements SearchService{

	@Autowired
	private SearchDao searchDao;
	
	@Override
	public List<UserDetails> searchUser(String searchString) {
		List<UserDetails> userList = searchDao.searchUser(searchString);
		return userList;
	}

	@Override
	public UserDetails viewProfile(String userName) {
		UserDetails user = searchDao.viewProfile(userName);
		return user;
	}

	@Override
	public List<Company> searchCompany(String searchString) {
		List<Company> companyList = searchDao.searchCompany(searchString);
		return companyList;
	}

}
