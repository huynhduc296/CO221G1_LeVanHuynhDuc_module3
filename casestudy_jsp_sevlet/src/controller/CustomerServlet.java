package controller;

import model.bean.Customer;
import model.bean.CustomerType;
import model.service.CustomerService;
import model.service.CustomerServiceImpl;
import model.service.customertype.CustomerTypeServicer;
import model.service.customertype.CustomerTyperSevicerImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    CustomerService customerService=new CustomerServiceImpl();
    CustomerTypeServicer customerTypeServicer=new CustomerTyperSevicerImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addCustomer(request,response);
                break;
            case "edit":
                updateCustomer(request,response);
                break;
            case "delete":
                deleteCustomer(request,response);
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
                searchCustomer(request,response);
                break;
            case "sort":
                sort(request,response);
                break;
            default:
                showCustomerList(request, response);
        }
    }

    public void showCustomerList(HttpServletRequest request,HttpServletResponse response){
        List<Customer> customerList=customerService.findByAll();
        RequestDispatcher dispatcher=request.getRequestDispatcher("customer/list.jsp");
        request.setAttribute("customer",customerList);
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void addCustomer(HttpServletRequest request, HttpServletResponse response){
        int code=Integer.parseInt(request.getParameter("code"));
        int typeId=Integer.parseInt(request.getParameter("typeId"));
        String name=request.getParameter("name");
        String birthday=request.getParameter("birthday");
        String gender=request.getParameter("gender");
        String idCard=request.getParameter("idCard");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");

        Customer customer=new Customer(code,typeId,name,birthday,gender,idCard,phone,email,address);
        this.customerService.add(customer);
        RequestDispatcher dispatcher=request.getRequestDispatcher("customer/create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    public void showFormAdd(HttpServletRequest request,HttpServletResponse response){
        List<CustomerType> customerTypeList=customerTypeServicer.findByAll();
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("customer/create.jsp");
        request.setAttribute("customerTypeList",customerTypeList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    public void showFormEdit(HttpServletRequest request,HttpServletResponse response){
        int id=Integer.parseInt(request.getParameter("id"));
        Customer customer=customerService.findById(id);
        List<CustomerType>customerType=customerTypeServicer.findByAll();
        request.setAttribute("customer",customer);
        request.setAttribute("customerTypeList",customerType);
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("customer/edit.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    public void updateCustomer(HttpServletRequest request, HttpServletResponse response){
        int id =Integer.parseInt(request.getParameter("id"));
        int code =Integer.parseInt(request.getParameter("code"));
        int typeId= Integer.parseInt(request.getParameter("typeId"));
        String name=request.getParameter("name");
        String birthday=request.getParameter("birthday");
        String gender=request.getParameter("gender");
        String idCard=request.getParameter("idCard");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        Customer customer=customerService.findById(id);
        RequestDispatcher dispatcher;
        if(customer==null){
            request.getRequestDispatcher("view/error.jsp");
        }else {
            customer.setCode(code);
            customer.setTypeId(typeId);
            customer.setName(name);
            customer.setBirthday(birthday);
            customer.setGender(gender);
            customer.setIdCard(idCard);
            customer.setPhone(phone);
            customer.setEmail(email);
            customer.setAddress(address);
            this.customerService.update(id,customer);
            request.setAttribute("customer",customer);
            dispatcher=request.getRequestDispatcher("customer/edit.jsp");
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
    public void deleteCustomer(HttpServletRequest request, HttpServletResponse response){
        int id=Integer.parseInt(request.getParameter("id"));
        Customer user=this.customerService.findById(id);
        RequestDispatcher dispatcher;
        if(user==null){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            this.customerService.remove(id);
            try {
                response.sendRedirect("/customer");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    public void searchCustomer(HttpServletRequest request, HttpServletResponse response){
        String name=request.getParameter("name");
        List<Customer>customers= customerService.searchByName(name);
        RequestDispatcher dispatcher;
        if(customers==null){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            request.setAttribute("customers",customers);
            try {
                dispatcher=request.getRequestDispatcher("customer/search.jsp");
                dispatcher.forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    private void sort(HttpServletRequest request, HttpServletResponse response){
        List<Customer> customers = customerService.sort();
        request.setAttribute("customers", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/sort.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
