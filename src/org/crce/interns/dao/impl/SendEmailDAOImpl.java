/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
* @author Leon
* Task: Communicates with database to get group values
* Dependency: -
*/
package org.crce.interns.dao.impl;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Resource;
import org.crce.interns.dao.SendEmailDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Leon
 */
@Repository("sendEmailDAOImpl")
public class SendEmailDAOImpl implements SendEmailDAO {

    @Resource(name = "sessionFactory")
    protected SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    protected Session getSession() {
        return sessionFactory.openSession();
    }

    @Override
    public String fetchCompsSTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

    @Override
    public String fetchElexSTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Electronics Engineering'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

    @Override
    public String fetchITSTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Information Technology Engineering'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

    @Override
    public String fetchProdSTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Production Engineering'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

    @Override
    public String fetchCompsFTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '4' and p.branch like 'Computer Engineering'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

    @Override
    public String fetchElexFTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '4' and p.branch like 'Electronics Engineering'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

    @Override
    public String fetchITFTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '4' and p.branch like 'Information Technology Engineering'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

    @Override
    public String fetchProdFTPC() {
        Session session = sessionFactory.openSession();

        String senderList = "";

        //String SQL_QUERY="Select emailId from PersonalProfile where userName like (select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '3' and p.branch like 'Computer Engineering')";
        String SQL_QUERY = "select u.userName from UserDetails as u,ProfessionalProfile as p where u.userName=p.userName and u.roleId like '4' and p.branch like 'Production Engineering'";

        Query query = session.createQuery(SQL_QUERY);

        List list = query.list();

        if (!list.isEmpty()) {
            System.out.println(list);
        }

        for (Object list1 : list) {
            System.out.println("senderList at start of loop " + senderList);
            System.out.println(list1);
            String recipient = list1.toString();
            SQL_QUERY = "select emailId from PersonalProfile where userName like '" + recipient + "'";
            query = session.createQuery(SQL_QUERY);
            list = query.list();
            recipient = list.toString();
            senderList = senderList.concat(recipient + " ");

        }
        System.out.println("final senderList " + senderList);

        session.close();
        return senderList;
    }

}
