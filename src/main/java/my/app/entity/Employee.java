package my.app.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")

public class Employee implements Serializable {
	public Employee() {
		
	}
	@Id
	@Column(name="empid")
	private String empid;
	
	@Column(name = "firstname")
	private String firstname;
	
	@Column(name = "lastname")
	private String lastname;
	
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	
	
}
