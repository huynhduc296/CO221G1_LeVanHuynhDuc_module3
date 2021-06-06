package controller;

import model.bean.Employee;
import model.service.EmployeeService;
import model.service.EmployeeServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet",urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {
    EmployeeService employeeService=new EmployeeServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addEmployee(request,response);
                break;
            case "edit":
                updateEmployee(request,response);
                break;
            case "delete":
                deleteEmployee(request,response);
                break;
            default:
                break;
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request,response);
                break;
            case "edit":
                showFormEdit(request,response);
                break;
            case "delete":
                showFormDelete(request,response);
                break;
            case "search":

                break;
            case "sort":

                break;
            default:
                showCustomerList(request, response);
        }
    }
    public void showCustomerList(HttpServletRequest request,HttpServletResponse response){
        List<Employee>employeeList=employeeService.findByAll();
        RequestDispatcher dispatcher=request.getRequestDispatcher("employee/list.jsp");
        request.setAttribute("employee",employeeList);
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    public void showFormAdd(HttpServletRequest request,HttpServletResponse response){
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("employee/create.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    public void addEmployee(HttpServletRequest request, HttpServletResponse response){
        String name=request.getParameter("name");
        int positionId=Integer.parseInt(request.getParameter("positionId"));
        int levelId=Integer.parseInt(request.getParameter("levelId"));
        int departmentId=Integer.parseInt(request.getParameter("departmentId"));
        String birthday=request.getParameter("birthday");
        String idCard=request.getParameter("idCard");
        String salary=request.getParameter("salary");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");

        Employee employee=new Employee(name,positionId,levelId,departmentId,birthday,idCard,salary,phone,email,address);
        this.employeeService.add(employee);
        RequestDispatcher dispatcher=request.getRequestDispatcher("employee/create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    public void showFormEdit(HttpServletRequest request,HttpServletResponse response){
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("employee/edit.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    public void updateEmployee(HttpServletRequest request, HttpServletResponse response){
        int id =Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        int positionId=Integer.parseInt(request.getParameter("positionId"));
        int levelId=Integer.parseInt(request.getParameter("levelId"));
        int departmentId=Integer.parseInt(request.getParameter("departmentId"));
        String birthday=request.getParameter("birthday");
        String idCard=request.getParameter("idCard");
        String salary=request.getParameter("salary");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        Employee employee=employeeService.findById(id);
        RequestDispatcher dispatcher;
        if(employee==null){
            request.getRequestDispatcher("view/error.jsp");
        }else {
            employee.setName(name);
            employee.setPositionId(positionId);
            employee.setLevelId(levelId);
            employee.setDepartmentId(departmentId);
            employee.setBirthday(birthday);
            employee.setIdCard(idCard);
            employee.setSalary(salary);
            employee.setPhone(phone);
            employee.setEmail(email);
            employee.setAddress(address);
            this.employeeService.update(id,employee);
            request.setAttribute("employee",employee);
            dispatcher=request.getRequestDispatcher("employee/edit.jsp");
            try {
                dispatcher.forward(request,response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }
    public void showFormDelete(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("customer/delete.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    public void deleteEmployee(HttpServletRequest request, HttpServletResponse response){
        int id=Integer.parseInt(request.getParameter("id"));
        Employee employee=this.employeeService.findById(id);
        RequestDispatcher dispatcher;
        if(employee==null){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            this.employeeService.remove(id);
            try {
                response.sendRedirect("/employee");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
