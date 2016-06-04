package org.crce.interns.service;

import java.util.List;

import org.crce.interns.beans.PlacementStatisticsBean;


public interface StatisticsService {

	public List<PlacementStatisticsBean> list();
	public void add(PlacementStatisticsBean placementStatisticsBean);
	
}
