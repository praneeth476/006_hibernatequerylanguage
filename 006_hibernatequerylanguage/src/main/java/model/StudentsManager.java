package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class StudentsManager {
	//FROM clause
	public List<Students> fromClause() throws Exception
	{
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		session.getTransaction().begin();
		
		List<Students> slist = session.createQuery("FROM Students", Students.class).list();
		
		session.getTransaction().commit();
		session.close();
		factory.close();
		return slist;
	}
	//SELECT Clause
	public List<Students> selectClause() throws Exception
	{
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		session.getTransaction().begin();
		
		List<Students> slist = session.createQuery("SELECT S FROM Students S", Students.class).list();
		
		session.getTransaction().commit();
		session.close();
		factory.close();
		return slist;
	}
	//WHERE Clause
	public List<Students> whereClause() throws Exception
	{
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		session.getTransaction().begin();
		
		List<Students> slist = session.createQuery("FROM Students S WHERE S.sid=1001", Students.class).list();
		
		session.getTransaction().commit();
		session.close();
		factory.close();
		return slist;
	}
	//Named Parameters
	public List<Students> namedParameters() throws Exception
	{
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		session.getTransaction().begin();
		
		List<Students> slist = session
				.createQuery("FROM Students S WHERE S.sid=:sid", Students.class)
				.setParameter("sid", 1002)
				.list();
		
		session.getTransaction().commit();
		session.close();
		factory.close();
		return slist;
	}
}
