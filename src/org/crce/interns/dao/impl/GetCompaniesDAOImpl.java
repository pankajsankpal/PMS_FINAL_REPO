/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.dao.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.crce.interns.dao.GetCompaniesDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Leon
 */
@Repository("getCompaniesDAO")
public class GetCompaniesDAOImpl implements GetCompaniesDAO{
    
    
    @Resource(name = "sessionFactory")
    protected SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    protected Session getSession() {
        return sessionFactory.openSession();
    }
    
    @Override
    public Map getCompanies(){
        
        Session session = sessionFactory.openSession();
        String SQL_QUERY = "Select company_name from Company";
        Query query = session.createQuery(SQL_QUERY);
        List list = query.list();
        System.out.println("List "+list.toString());
        Map <String, String> m = new LinkedHashMap<String,String>();
        list.stream().forEach((o) -> {
            m.put(o.toString(), o.toString());
        });
        return m;
    }
}
