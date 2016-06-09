package org.crce.interns.dao;

import java.util.List;

import org.crce.interns.model.PlacementStatistics;
import org.crce.interns.model.PlacementStats;

public interface StatisticsDAO {
	
	public List<PlacementStats> list();
	public void add(PlacementStats placementStats);

}
