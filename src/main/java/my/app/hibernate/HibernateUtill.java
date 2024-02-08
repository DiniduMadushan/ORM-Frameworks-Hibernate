package my.app.hibernate;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import my.app.entity.Employee;

public class HibernateUtill {

	private static SessionFactory session_factory;
	
	public static SessionFactory getSessionFactory() {
		
		if(session_factory==null) {
			Configuration config=new Configuration();
			Properties props=new Properties();
			
			props.put(Environment.DRIVER,"com.mysql.jdbc.Driver");
			props.put(Environment.URL,"jdbc:mysql://localhost:3306/mvc_hibernate");
			props.put(Environment.USER,"testuser");
			props.put(Environment.PASS,"testuser");
			
			config.setProperties(props);
			config.addAnnotatedClass(Employee.class);
			
			ServiceRegistry service_registry=new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
			session_factory=config.buildSessionFactory(service_registry);
			
		}
		
		
		
		return session_factory;
	}

}
