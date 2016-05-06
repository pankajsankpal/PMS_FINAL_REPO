package org.crce.interns.dao.impl;
import org.crce.interns.dao.NfDAO;
import org.crce.interns.model.PersonalProfile;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.UserDetails;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("nfDAO")
public class NfDAOImpl implements NfDAO{

	public void checkNf(){
		System.out.print("inside nf dao");
	}
}
