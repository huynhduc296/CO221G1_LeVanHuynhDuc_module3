package model.repositoty;

import model.bean.Customer;

import java.util.List;

public interface CustomerRepository {
    List<Customer> findByAll();
    Customer findById(int id);
    void update(int id, Customer customer);
    boolean add(Customer customer);
    void remove(int id);
    List<Customer>sort();
    List<Customer>searchByName(String name);
}
