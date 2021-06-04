package model.repositoty;

import model.bean.Customer;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository {
    private final String FIND_ALL = "select * from khach_hang";

    private final String SELECT_CUSTOMER_BY_ID=  ("update Customers\n" +
            "set customer_type_id = ? , full_name = ? , date_of_birth = ? , id_card_number = ?,phone_number = ? , email = ? , address = ? \n" +
            "where customer_id = ?");

    private final  String ADD_CUSTOMER=(" insert into customers(customer_type_id,full_name, date_of_birth, id_card_number, phone_number, email ,address)\n" +
            "values (?,?,?,?,?,?,?)");

    private final String DELETE_CUSTOMER=("delete from customers\n" +
            "where customer_id = ?");

    private final String SORT_NAME=("select *\n" +
            "from customers\n" +
            "order by full_name");

    private final String SEARCH_BY_NAME=("\n" +
            "select * from customers\n" +
            "where full_name like ?;");

    BaseRepository baseRepository=new BaseRepository();
    @Override
    public List<Customer> findByAll() {
       List<Customer>customerList=new ArrayList<>();
            try {
                Statement statement=baseRepository.connectDataBase().createStatement();
                ResultSet resultSet=statement.executeQuery(FIND_ALL);
                Customer customer;
            while (resultSet.next()){
                customer=new Customer();
                customer.setId(resultSet.getString("customers_id"));
                customer.setTypeId(resultSet.getInt("customer_type_id"));
                customer.setName(resultSet.getString("full_name"));
                customer.setBirthday(resultSet.getString("date_of_birth"));
                customer.setIdCard(resultSet.getString("id_card_number"));
                customer.setPhone(resultSet.getString("phone_number"));
                customer.setEmail(resultSet.getString("email"));
                customer.setAddress(resultSet.getString("address"));
                customerList.add(customer);
            }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            return customerList;
    }

    @Override
    public Customer findById(int id) {
        return null;
    }

    @Override
    public void update(int id, Customer user) {

    }

    @Override
    public boolean addUser(Customer user) {
        return false;
    }

    @Override
    public void remove(int id) {

    }

    @Override
    public List<Customer> sort() {
        return null;
    }

    @Override
    public List<Customer> searchByCountry(String country) {
        return null;
    }
}
