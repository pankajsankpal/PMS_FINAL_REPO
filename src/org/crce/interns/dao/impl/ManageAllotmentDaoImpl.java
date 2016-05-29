package org.crce.interns.dao.impl;

import java.util.List;

import org.crce.interns.dao.ManageAllotmentDao;
import org.crce.interns.model.Allotment;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/*
 * Author: Cheryl
 * Classes Used: Allotment
 * 
 * Description: This DAO is used to save data entries for room allotment
 * 				table. It also returns values in case of view Allotment
 */


@Repository("manageAllotmentDao")
public class ManageAllotmentDaoImpl implements ManageAllotmentDao{

	@Autowired
	private SessionFactory sessionFactory;

	public void createAllotment(Allotment allotment) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(allotment);	
		//sessionFactory.openSession().saveOrUpdate(allotment);	

	}

	@SuppressWarnings("unchecked")
	public List<Allotment> listAllotment() {
		// TODO Auto-generated method stub
		return (List<Allotment>) sessionFactory.getCurrentSession().createCriteria(Allotment.class).list();
		//return (List<Allotment>) sessionFactory.openSession().createCriteria(Allotment.class).list();
	}
}
