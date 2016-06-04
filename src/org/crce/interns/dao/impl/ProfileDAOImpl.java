/**
 * @author Nevil Dsouza ZNevzz
 *	Description : DAO impl for profile related CRUD operations
 *	DEPENDENCIES: 
 * 	model-	PersonalProfile;ProfessionalProfile;UserDetails;
 */
 
package org.crce.interns.dao.impl;

import org.crce.interns.dao.ProfileDAO;
import org.crce.interns.model.PersonalProfile;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.UserDetails;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("profileDAO")

public class ProfileDAOImpl implements ProfileDAO{

//public class ProfileDAOImpl{

	@Autowired
	private SessionFactory sessionFactory;
	
	/*
	public void addProfile(Profile user) {
		sessionFactory.getCurrentSession().save(user);
	}*/
	
	
	/**	GET details from database
	*	
	*	@param	Profile user
	*	@return Profile result 
	*
	*/
	public UserDetails getProfile(UserDetails user) {
		
		UserDetails result = (UserDetails)sessionFactory.getCurrentSession().get(UserDetails.class, user.getUserName());
		
		return result;
	}
	
	/**	GET details from database
	*	
	*	@param	Profile user
	*	@return Profile result 
	*
	*/
	public ProfessionalProfile getProfile(ProfessionalProfile professionalProfile) {
		
		ProfessionalProfile result = (ProfessionalProfile)sessionFactory.getCurrentSession().get(ProfessionalProfile.class, professionalProfile.getUserName());
		
		return result;
	}
	
	/**	GET details from database
	*	
	*	@param	Profile user
	*	@return Profile result 
	*
	*/
	public PersonalProfile getProfile(PersonalProfile personalProfile) {
		
		PersonalProfile result = (PersonalProfile)sessionFactory.getCurrentSession().get(PersonalProfile.class, personalProfile.getUserName());
		
		return result;
	}
		

	
	
	public ProfessionalProfile updateProfessionalProfile(ProfessionalProfile professionalProfile) {
		
		sessionFactory.getCurrentSession().update(professionalProfile);
		
		ProfessionalProfile result = (ProfessionalProfile)sessionFactory.getCurrentSession().get(ProfessionalProfile.class, professionalProfile.getUserName());
		
		return result;
	}
	
	public PersonalProfile updatePersonalProfile(PersonalProfile personalProfile) {
		
		sessionFactory.getCurrentSession().update(personalProfile);
		
		PersonalProfile result = (PersonalProfile)sessionFactory.getCurrentSession().get(PersonalProfile.class, personalProfile.getUserName());
		
		return result;
	}
	
	public UserDetails updateUserDetails(UserDetails userDetails) {
		
		sessionFactory.getCurrentSession().update(userDetails);
		
		UserDetails result = (UserDetails)sessionFactory.getCurrentSession().get(UserDetails.class, userDetails.getUserName());
		
		return result;
	}
	
	
}
