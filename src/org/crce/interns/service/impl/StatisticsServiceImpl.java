package org.crce.interns.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.crce.interns.beans.CompanyBean;
import org.crce.interns.beans.PlacementStatisticsBean;
import org.crce.interns.dao.CompanyDao;
import org.crce.interns.dao.ManageApplicantsDao;
import org.crce.interns.dao.ManageProfileDao;
import org.crce.interns.dao.StatisticsDAO;
import org.crce.interns.model.Company;
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
	
	@Autowired
	private ManageApplicantsDao crudDao;
	
	@Autowired
	private ManageProfileDao manageProfileDao;

	@Autowired
	private CompanyDao companyDao;
	
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public List<PlacementStatisticsBean> list() {
		// TODO Auto-generated method stub
		
		List<PlacementStatisticsBean> listBean
		= new ArrayList<PlacementStatisticsBean>();
		
		List<PlacementStatistics> list = statisticsDAO.list();
		
		calculate(list);
		
		
		
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
	
	public void calculate(List<PlacementStatistics> list){
		//generate set of company id in company
		List<Company> companyList= companyDao.getCompany();		
		Set<Integer> companySet = new HashSet<Integer>();
		Set<Integer> applicantSet = new HashSet<Integer>();
		
		System.out.println("size="+companyList.size());
		
		for(Company cb: companyList){
			System.out.println("id="+cb.getCompanyId());
			companySet.add(cb.getCompanyId());
		}
		System.out.println("from company = "+companySet.toString());
		
		//generate set of company id in applicant_company
		applicantSet = crudDao.retrieveCompanyId();
		
		System.out.println("from applicant = "+applicantSet.toString());
		
		for(Integer i: companySet){
			if(!applicantSet.contains(i)){
				companySet.remove(i);
			}
		}
		
		System.out.println("RESULT = "+companySet.toString());

		//generate set of company id in list
		//eliminate which are already present in list
		//continue calculations
		
	}

}
