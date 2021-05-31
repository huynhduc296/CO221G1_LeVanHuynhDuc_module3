package model.repository;

import model.Customer;
import model.service.CustomerService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer,Customer>customers;
   static {
    customers=new HashMap<>();
    customers.put(1,new Customer(1,"duc","hue"));
    customers.put(2,new Customer(2,"tung","hue"));
    customers.put(3,new Customer(3,"nam","hue"));
    customers.put(4,new Customer(4,"tu","hue"));
    customers.put(5,new Customer(5,"hiep","hue"));
   }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
      customers.put(customer.getId(),customer);
    }

    @Override
    public Customer finById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
       customers.put(id,customer);
    }

    @Override
    public void delete(int id) {
        customers.remove(id);
    }
}
