package my.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import my.app.entity.Employee;
import my.app.hibernate.HibernateUtill;

public class EmployeeDAO {

	public void saveEmployee(Employee emp) {
		Session session=HibernateUtill.getSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		session.save(emp);
		transaction.commit();
	}
	
	public List<Employee> getEmpList(){
		
		List<Employee> emplist=null;
		
		Session session=HibernateUtill.getSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		emplist=session.createQuery("FROM Employee").getResultList();
		transaction.commit();
		
		return emplist;
		
	}
	
	public Employee getEmp(String empid) {
		Employee emp=null;
		
		Session session=HibernateUtill.getSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		emp=session.get(Employee.class, empid);
		transaction.commit();
		
		return emp;
	}
	
	public void updateEmp(Employee emp) {
		Session session=HibernateUtill.getSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		session.update(emp);
		transaction.commit();
	}
	
	public void deleteEmp(String empid) {
		Employee emp=null;
		Session session=HibernateUtill.getSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		emp=session.get(Employee.class,empid);
		if(emp!=null) {
			session.delete(emp);
		}
		transaction.commit();
	}
	
}
