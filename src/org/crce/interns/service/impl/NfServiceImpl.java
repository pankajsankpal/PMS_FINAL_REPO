/**
 * @author Nevil Dsouza
 *
 *	Main service impl
 *	DEPENDENCIES: , , 
 */

package org.crce.interns.service.impl;


import java.util.LinkedList;
import java.util.List;

import org.crce.interns.beans.PersonalProfileBean;
import org.crce.interns.beans.ProfessionalProfileBean;
import org.crce.interns.beans.UserDetailsBean;
import org.crce.interns.dao.NfDAO;
import org.crce.interns.model.Notification;
import org.crce.interns.model.NotificationRoot;
import org.crce.interns.service.NfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("NfService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class NfServiceImpl implements NfService{
	
	
	@Autowired
	private NfDAO nfDAO;
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void checkNf() {
		System.out.print("inside Nf service");
		nfDAO.checkNf();
		nfDAO.displayXmlDatabaseInConsole();
		
	}
	
	
	/*@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void checkNf() {
		System.out.print("inside Nf service");
		nfDAO.checkNf();
		nfDAO.displayXmlDatabaseInConsole();
		
	}*/
	
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public List<Notification> getNf
	(UserDetailsBean userDetailsBean,ProfessionalProfileBean professionalProfileBean,
			PersonalProfileBean personalProfileBean){
		
		List<Notification> nfList= new LinkedList<Notification>();
		//NotificationRoot r = new NotificationRoot();
		
		nfList = nfDAO.getNotificationDatabase().getNotifications();
		
		System.out.println(nfList.size());
		//get root
		
		
		return nfList; 
	}
	
	
	
}
