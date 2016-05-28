package org.crce.interns.dao.impl;

import java.util.List;

import org.crce.interns.beans.CriteriaBean;
import org.crce.interns.dao.CriteriaDao;
import org.crce.interns.model.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Repository;

@Repository("criteriaDao")

public class CriteriaDaoImpl implements CriteriaDao {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCriteria(Criteria criteria) {
		try{
		System.out.println("In DAO CRITERIA");
		System.out.println(criteria.getCgpa());
			sessionFactory.getCurrentSession().saveOrUpdate(criteria);
			int cid=criteria.getCriteria_id();
			System.out.println("in dao criteria after");
			
		}
		

		catch (ConstraintViolationException e) {
			System.out.println("error");
			
		}
		catch(DataIntegrityViolationException e){
			System.out.println("error");
			
		}	

	
	}

	@SuppressWarnings("unchecked")
	public List<CriteriaBean> getCriteria() {  
		  return (List<CriteriaBean>) sessionFactory.getCurrentSession().createCriteria(CriteriaBean.class).list();  
		 }  
}
