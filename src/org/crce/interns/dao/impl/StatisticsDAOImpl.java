package org.crce.interns.dao.impl;

import java.util.List;

import org.crce.interns.dao.StatisticsDAO;
import org.crce.interns.model.PlacementStats;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.TotalStudents;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("statisticsDAO")
public class StatisticsDAOImpl implements StatisticsDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@SuppressWarnings("unchecked")
	public List<PlacementStats> list(){
		List<PlacementStats> listStats=null;
		
		listStats = sessionFactory.getCurrentSession().createCriteria(PlacementStats.class).list();		
		
		return listStats;
	}
	
	@Override
	public void add(PlacementStats placementStats){
		sessionFactory.getCurrentSession().saveOrUpdate(placementStats);
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public void calculateTotal(String year) {
		//Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ProfessionalProfile.class);
		//criteria.add(Restrictions.eq("year", year));
		//List<ProfessionalProfile> l = criteria.list();
		List<ProfessionalProfile> l = sessionFactory.getCurrentSession().createCriteria(ProfessionalProfile.class).list();
		for (ProfessionalProfile i : l)
			System.out.println(i.getUserName());
	}
}
