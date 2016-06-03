package org.crce.interns.dao.impl;

import java.util.List;

import org.crce.interns.dao.StatisticsDAO;
import org.crce.interns.model.Feedback;
import org.crce.interns.model.PlacementStatistics;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("statisticsDAO")
public class StatisticsDAOImpl implements StatisticsDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@SuppressWarnings("unchecked")
	public List<PlacementStatistics> list(){
		List<PlacementStatistics> listStats=null;
		
		listStats = sessionFactory.getCurrentSession().createCriteria(PlacementStatistics.class).list();
		
		
		return listStats;
	}
	
	@Override
	public void add(PlacementStatistics placementStatistics){
		sessionFactory.getCurrentSession().saveOrUpdate(placementStatistics);
	}
}
