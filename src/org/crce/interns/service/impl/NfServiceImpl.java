/**
 * @author Nevil Dsouza
 *
 *	Main service impl
 *	DEPENDENCIES: , , 
 */

package org.crce.interns.service.impl;


import java.util.LinkedList;
import java.util.List;

import org.crce.interns.beans.NotificationBean;
import org.crce.interns.beans.PersonalProfileBean;
import org.crce.interns.beans.ProfessionalProfileBean;
import org.crce.interns.beans.UserDetailsBean;
import org.crce.interns.dao.NfDAO;
import org.crce.interns.model.Notification;
import org.crce.interns.model.NotificationRoot;
import org.crce.interns.service.NfService;
import org.springframework.beans.BeanUtils;
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
	public List<NotificationBean> getNf
	(UserDetailsBean userDetailsBean,ProfessionalProfileBean professionalProfileBean,
			PersonalProfileBean personalProfileBean){
		
		List<Notification> nfList= new LinkedList<Notification>();
		List<NotificationBean> nfBeanList= new LinkedList<NotificationBean>();

		nfList = nfDAO.getNotificationDatabase().getNotifications();
		
		for(Notification i: nfList){

			NotificationBean temp = new NotificationBean();		
			BeanUtils.copyProperties(i, temp);
			nfBeanList.add(temp);
		}
		
//		System.out.println(nfList.size());

		return nfBeanList; 
	}
	
	
	
}
