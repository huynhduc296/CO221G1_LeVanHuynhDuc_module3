package model.service.customertype;

import model.bean.CustomerType;
import model.repositoty.customertype.CustomerTypeRepository;
import model.repositoty.customertype.CustomerTypeRepositotyi;

import java.util.List;

public class CustomerTyperSevicerImpl implements CustomerTypeServicer{
    CustomerTypeRepositotyi customerTypeRepositotyi=new CustomerTypeRepository();
    @Override
    public List<CustomerType> findByAll() {
        return customerTypeRepositotyi.findByAll();
    }
}
