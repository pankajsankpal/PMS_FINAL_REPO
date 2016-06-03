package org.crce.interns.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.crce.interns.beans.PlacementStatisticsBean;
import org.crce.interns.dao.StatisticsDAO;
import org.crce.interns.model.PlacementStatistics;
import org.crce.interns.service.StatisticsService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("statisticsService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class StatisticsServiceImpl implements StatisticsService {

	@Autowired
	private StatisticsDAO statisticsDAO;
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public List<PlacementStatisticsBean> list() {
		// TODO Auto-generated method stub
		List<PlacementStatisticsBean> listBean
		= new ArrayList<PlacementStatisticsBean>();
		
		List<PlacementStatistics> list = statisticsDAO.list();
		
		
		
		
		
		for( PlacementStatistics ps: list){
			
			PlacementStatisticsBean temp = new PlacementStatisticsBean();			
			BeanUtils.copyProperties(ps,temp);
			listBean.add(temp);
			
		}
		
		return listBean;
	}

	@Override 
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void add(PlacementStatisticsBean placementStatisticsBean) {
		// TODO Auto-generated method stub
		
		PlacementStatistics placementStatistics= new PlacementStatistics();
		BeanUtils.copyProperties(placementStatisticsBean,placementStatistics);
		statisticsDAO.add(placementStatistics);

	}

}
