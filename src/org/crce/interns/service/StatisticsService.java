package org.crce.interns.service;

import java.util.List;
import java.util.Map;

import org.crce.interns.beans.PlacementStatisticsBean;
import org.crce.interns.beans.PlacementStatsBean;
import org.crce.interns.model.PlacementStats;


public interface StatisticsService {

	public Map<Integer, Map<String, PlacementStatsBean>> list();		
	
	public void addOnce(PlacementStatsBean statisticsBean);
	
	public Map<Integer, String> getCompanyMap();
	
	public void calculateTotal(String year);
}
