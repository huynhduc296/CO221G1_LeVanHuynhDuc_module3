package model.repositoty.customertype;

import model.bean.CustomerType;
import model.repositoty.BaseRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements CustomerTypeRepositotyi{
    private final String FIND_ALL = "select * from customertype";
    BaseRepository baseRepository=new BaseRepository();

    @Override
    public List<CustomerType> findByAll() {
        List<CustomerType>customerTypeList=new ArrayList<>();
        try {
            Statement statement=baseRepository.connectDataBase().createStatement();
            ResultSet resultSet=statement.executeQuery(FIND_ALL);
            CustomerType customerType;
            while (resultSet.next()){
                customerType=new CustomerType();
                customerType.setTypeId(resultSet.getInt("customer_type_id"));
                customerType.setCustomerTypeName(resultSet.getString("customer_type_name"));
                customerTypeList.add(customerType);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerTypeList;
    }

    @Override
    public CustomerType findById(int id) {
        return null;
    }
}
