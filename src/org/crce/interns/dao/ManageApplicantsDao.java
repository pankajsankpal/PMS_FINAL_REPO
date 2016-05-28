package org.crce.interns.dao;
import java.util.List;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserCompany;

public interface ManageApplicantsDao {
	
	public void createDetails(UserCompany user);
	public int checkDetails(UserCompany user);
	public List<UserCompany> retreiveDetails(String company);
	public void deleteDetails(UserCompany user);
	
}


