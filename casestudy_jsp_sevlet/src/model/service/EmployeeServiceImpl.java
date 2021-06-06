package model.service;

import model.bean.Employee;
import model.repositoty.EmployeeRepository;
import model.repositoty.EmployeeRepositoryImpl;

import java.util.List;

public class EmployeeServiceImpl implements EmployeeService {
    EmployeeRepository employeeRepository=new EmployeeRepositoryImpl();
    @Override
    public List<Employee> findByAll() {
        return employeeRepository.findByAll();
    }

    @Override
    public Employee findById(int id) {
        return employeeRepository.findById(id);
    }

    @Override
    public void update(int id, Employee employee) {
        employeeRepository.update(id,employee);
    }

    @Override
    public boolean add(Employee employee) {
        return employeeRepository.add(employee);
    }

    @Override
    public void remove(int id) {
        employeeRepository.remove(id);
    }

    @Override
    public List<Employee> sort() {
        return null;
    }

    @Override
    public List<Employee> searchByName(String name) {
        return null;
    }
}
