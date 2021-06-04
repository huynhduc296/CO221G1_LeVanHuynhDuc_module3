package model.repositoty;

import model.bean.Customer;

import java.util.List;

public interface CustomerRepository {
    List<Customer> findByAll();
    Customer findById(int id);
    void update(int id, Customer user);
    boolean addUser(Customer user);
    void remove(int id);
    List<Customer>sort();
    List<Customer>searchByCountry(String country);
}
