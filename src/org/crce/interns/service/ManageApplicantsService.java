package org.crce.interns.service;
import java.util.ArrayList;
import java.util.List;
//import org.crce.interns.beans.UserBean;
import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.dao.ManageApplicantsDao;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserCompany;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public interface ManageApplicantsService {
	
	 public void createDetails(UserCompanyBean userBean);
	 public List<UserCompany> retreiveDetails(String company);
	 public List<Company> retrieveCompany_id();
	 public void deleteDetails(UserCompanyBean userBean);
	 
	}
