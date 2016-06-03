package org.crce.interns.dao;

import java.util.List;

import org.crce.interns.model.PlacementStatistics;

public interface StatisticsDAO {
	
	public List<PlacementStatistics> list();
	public void add(PlacementStatistics placementStatistics);

}
