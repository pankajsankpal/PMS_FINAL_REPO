package org.crce.interns.service;

import org.crce.interns.beans.PersonalProfileBean;
import org.crce.interns.beans.ProfessionalProfileBean;
import org.crce.interns.beans.UserDetailsBean;

//@Service("profileService")
public interface ProfileService {
	
	public UserDetailsBean getProfile(UserDetailsBean userDetailsBean);
	
	public ProfessionalProfileBean getProfile(ProfessionalProfileBean professionalProfileBean);
	
	public PersonalProfileBean getProfile(PersonalProfileBean personalProfileBean);
	
	public ProfessionalProfileBean updateProfessionalProfile(ProfessionalProfileBean professionalProfileBean);
	
	public PersonalProfileBean updatePersonalProfile(PersonalProfileBean personalProfileBean);
	
	public UserDetailsBean updateUserDetails(UserDetailsBean userDetailsBean);
	
	

}
