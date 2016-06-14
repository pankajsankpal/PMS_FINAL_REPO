package org.crce.interns.dao.impl;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.crce.interns.beans.UserCompanyBean;
import org.crce.interns.dao.FeedbackDao;
import org.crce.interns.model.*;

@Repository("feedbackDao")
public class FeedbackDaoImpl implements FeedbackDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Feedback> listFeedback() {
		List<Feedback> list = sessionFactory.getCurrentSession().createCriteria(Feedback.class).list();
		
		System.out.println("inside dao size of list = " + list.size());
		
		return list;
	}

	public void addFeedback(Feedback feedback) {
		sessionFactory.getCurrentSession().saveOrUpdate(feedback);
	}
	
	
	public boolean checkUser(String user, String cName){
		
		List<UserCompanyBean> result = null;
		
		String y = Integer.toString(Calendar.getInstance().get(Calendar.YEAR));
		
		Query query = sessionFactory.getCurrentSession()
				.createQuery("SELECT U.username FROM UserCompany U WHERE U.year = :curYear AND U.company= :cName");
		query.setParameter("curYear", String.valueOf(y));
		query.setParameter("cName", cName);
		result = query.list();
		
		for(UserCompanyBean a: result){
			
			if(user.equals(a.getUsername())){
				return true;
			}
			
		}
		return false;
	}

}
