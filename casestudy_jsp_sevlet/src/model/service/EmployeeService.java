package model.service;

import model.bean.Customer;
import model.bean.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> findByAll();
    Employee findById(int id);
    void update(int id, Employee employee);
    boolean add(Employee employee);
    void remove(int id);
    List<Employee>sort();
    List<Employee>searchByName(String name);;
}
