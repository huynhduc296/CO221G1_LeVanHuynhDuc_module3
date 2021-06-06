package model.service;

import model.bean.Customer;
import model.repositoty.CustomerRepository;
import model.repositoty.CustomerRepositoryImpl;

import java.util.List;

public class CustomerServiceImpl implements CustomerService{
    CustomerRepository customerRepository=new CustomerRepositoryImpl();
    @Override
    public List<Customer> findByAll() {
        return customerRepository.findByAll();
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customerRepository.update(id,customer);
    }

    @Override
    public boolean add(Customer customer) {
        return customerRepository.add(customer);
    }

    @Override
    public void remove(int id) {
        customerRepository.remove(id);
    }

    @Override
    public List<Customer> sort() {
        return customerRepository.sort();
    }

    @Override
    public List<Customer> searchByName(String name) {
        return customerRepository.searchByName(name);
    }
}
