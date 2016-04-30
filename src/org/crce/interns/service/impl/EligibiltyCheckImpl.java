package org.crce.interns.service.impl;



import java.util.Date;

import org.crce.interns.beans.CriteriaBean;
import org.crce.interns.beans.ProfessionalProfileBean;
import org.crce.interns.beans.QualificationBean;
import org.crce.interns.dao.EligibilityDao;
import org.crce.interns.model.Criteria;
import org.crce.interns.model.ProfessionalProfile;
import org.crce.interns.model.Qualification;
import org.crce.interns.service.EligibilityService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("E_service")
public class EligibiltyCheckImpl implements EligibilityService{

	
	@Autowired
	private  EligibilityDao edao;

	
	


	public CriteriaBean getCriteria(int company_id)  {
		Criteria criteria = edao.getCriterias(company_id);
		CriteriaBean criteriaBean = new CriteriaBean();
		BeanUtils.copyProperties(criteria, criteriaBean);
		
		
		return criteriaBean;
	}
	
	public ProfessionalProfileBean getProfessionalProfile(String username)
	{
		ProfessionalProfile pp=edao.getProfessionalProfile(username);
		ProfessionalProfileBean pd= new ProfessionalProfileBean();
		BeanUtils.copyProperties(pp, pd);
		return pd;
		
		
	}
	public QualificationBean getQualifications(String username)
	{
		 Qualification q=edao.getQualification(username);
		QualificationBean qb= new QualificationBean();
		BeanUtils.copyProperties(q, qb);
		return qb;
		
		
	}
	
	public int getCriteriaId(String job_id)
	{
		int c_id;
		c_id=edao.getCriteriaId(job_id);
	
		return c_id;
	}
	
	
	public boolean checkCriteria(String username,int criteria_id){
		CriteriaBean c=getCriteria(criteria_id);
		Date cur_date=new Date();
		if(cur_date.compareTo(c.getLast_date_to_apply())<=0)
		{
			ProfessionalProfileBean p=getProfessionalProfile(username);
			
			//check if placed????????????????????????
			if(!p.getStatus().equalsIgnoreCase("placed"))
			{
				System.out.println("inside here");
				String branch=p.getBranch();
				String criteria_br[]=c.getEligible_branches().split(" ");
				for(int i=0;i<criteria_br.length;i++)
				{
					if(branch.equalsIgnoreCase(criteria_br[i]))
					{
						QualificationBean q=getQualifications(username);
						if(Double.parseDouble(q.getDeg_per()) >= Double.parseDouble(c.getPercentage())  &&
							Double.parseDouble(q.getHsc_or_dip_per()) >= Double.parseDouble(c.getHsc_or_dip_percentage()) &&	
							Double.parseDouble(q.getSsc_per()) >= Double.parseDouble(c.getSsc_percentage())	&&
							Double.parseDouble(q.getDrops()) <= Double.parseDouble(c.getYear_gap_allowed()) 
					//check for dead and live kt????????
				
								)
						{System.out.println("inside 2");
							return true;
						}
					}
				}
			}
			
		}
			return false;
	}

	}

