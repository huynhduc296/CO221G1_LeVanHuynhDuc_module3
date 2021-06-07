package model.repositoty.customertype;

import model.bean.CustomerType;
import model.bean.Employee;

import java.util.List;

public interface CustomerTypeRepositotyi {
    List<CustomerType> findByAll();
    CustomerType findById(int id);
}
