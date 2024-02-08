package my.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import my.app.dao.EmployeeDAO;
import my.app.entity.Employee;
import net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher;

@WebServlet("/")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EmployeeDAO emp_dao;
	

	public void init(ServletConfig config) throws ServletException {
		emp_dao=new EmployeeDAO();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requested_page=request.getServletPath();
		
		if(requested_page.equals("/new")) {
			saveEmployee(request, response);
		}
		else if (requested_page.equals("/view")) {
			viewEmpList(request, response);
		}
		else if(requested_page.equals("/update")) {
			if(request.getParameter("empid")!=null) {
				getEmployee(request, response);
			}else {
				updateEmployee(request, response);
			}
		}
		else if(requested_page.equals("/delete")) {
			deleteEmp(request, response);
		}
		
		
	}
	
	private void saveEmployee(HttpServletRequest request,HttpServletResponse response) throws IOException {
		Employee emp=new Employee();
		emp.setEmpid(request.getParameter("empid"));
		emp.setFirstname(request.getParameter("fname"));
		emp.setLastname(request.getParameter("lname"));
		
		
		emp_dao.saveEmployee(emp);
		response.sendRedirect("view");
	}
	
	private void viewEmpList(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher=request.getRequestDispatcher("WEB-INF/viewEmployees.jsp");
		
		List<Employee> emplist=emp_dao.getEmpList();
		
		request.setAttribute("emplist",emplist);
		
		dispatcher.forward(request, response);
		
	}
	
	private void getEmployee(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		Employee emp=emp_dao.getEmp(request.getParameter("empid"));
		RequestDispatcher dispatcher=request.getRequestDispatcher("WEB-INF/employeeEdit.jsp");
		request.setAttribute("emp", emp);
		dispatcher.forward(request, response);
	}
	
	private void updateEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		Employee emp=new Employee();
		emp.setEmpid(request.getParameter("empid"));
		emp.setFirstname(request.getParameter("fname"));
		emp.setLastname(request.getParameter("lname"));
		
		emp_dao.updateEmp(emp);
		response.sendRedirect("view");
		
		
	}
	
	private void deleteEmp(HttpServletRequest request,HttpServletResponse response) throws IOException {
		emp_dao.deleteEmp(request.getParameter("empid"));
		response.sendRedirect("view");
		
	}

}
