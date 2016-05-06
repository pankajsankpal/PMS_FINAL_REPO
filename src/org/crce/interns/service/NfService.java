/**
 * @author Nevil Dsouza
 *
 *	Main service
 *	DEPENDENCIES: , , 
 */

package org.crce.interns.service;

import java.util.List;

import org.crce.interns.beans.PersonalProfileBean;
import org.crce.interns.beans.ProfessionalProfileBean;
import org.crce.interns.beans.UserDetailsBean;
import org.crce.interns.model.Notification;

public interface NfService {
	
	public void checkNf();
	
	public List<Notification> getNf
	(UserDetailsBean userDetailsBean,ProfessionalProfileBean professionalProfileBean,
			PersonalProfileBean personalProfileBean);

}
