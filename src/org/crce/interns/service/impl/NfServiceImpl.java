/**
 * @author Nevil Dsouza
 *
 *	Main service impl
 *	DEPENDENCIES: , , 
 */

package org.crce.interns.service.impl;


import org.crce.interns.dao.NfDAO;
import org.crce.interns.dao.impl.ProfileDAOImpl;
import org.crce.interns.model.PersonalProfile;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.UserDetails;
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
		
	}
}
