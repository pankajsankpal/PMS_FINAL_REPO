package org.crce.interns.dao;
import java.util.List;
import org.crce.interns.model.Company;
import org.crce.interns.model.UserCompany;

public interface ManageApplicantsDao {
	
	public void createDetails(UserCompany user);
<<<<<<< HEAD
	public int checkDetails(UserCompany user);
	public List<UserCompany> retreiveDetails(String company);
=======
	public List<UserCompany> retreiveDetails(String company);
	public List<Company> retrieveCompany_id();
>>>>>>> origin/master
	public void deleteDetails(UserCompany user);
	
}


