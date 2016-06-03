/*
*
* Author Name: Crystal Cuthinho	
* 
* Filename: ManageUserDaoImpl.java	
* 	
* Classes used by code:  ManageUserDao, Student, Faculty
* 
* Tabes used: User_schema.userdetails,User_schema.personal_profile,User_schema.professional_profile,User_schema.qualification
* 
* Description: This dao implementation is used to implement the methods in ManageUserDao.java.
* 				It uses hibernate transaction manager.
* 				
* 
* Functions: createStudent()	, createFaculty() , deleteUser()
*
*/

package org.crce.interns.dao.impl;


import java.sql.SQLException;

import org.crce.interns.dao.ManageUserDao;
import org.crce.interns.model.Faculty;
import org.crce.interns.model.Student;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("manageUserDao")
public class ManageUserDaoImpl implements ManageUserDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void createStudent(Student student) {
		sessionFactory.getCurrentSession().save(student);
	}

	public void createFaculty(Faculty faculty) {
		sessionFactory.getCurrentSession().save(faculty);
	}
	
	public void deleteUser(Student student, String username){
		try{
		//sessionFactory.getCurrentSession().createQuery("DELETE FROM Student WHERE rollno ="+student.getRollno()).executeUpdate();
			/*Session session = sessionFactory.openSession();
			student.setRollno(username);
			session.delete(student);
			session.close();*/
			student.setRollno(username);
			sessionFactory.getCurrentSession().delete(student);
		}
		catch(HibernateException e){
			System.out.println(e);
		}
	}
}
