package model.repositoty;

import model.bean.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository {
    private final String FIND_ALL = "select * from Customers";

    private static final String FIND_BY_ID = "select * from customers where customer_id = ?;";

    private final String SELECT_CUSTOMER_BY_ID=  ("update Customers\n" +
            "set customer_code = ? ,customer_type_id = ? , full_name = ? , date_of_birth = ? ,gender = ? , id_card_number = ?,phone_number = ? , email = ? , address = ? \n" +
            "where customer_id = ?");
    private static final String UPDATE = "UPDATE customers t SET " +
            "t.customer_code=?, t.customer_type_id=?, t.full_name = ?, t.date_of_birth = ?, " +
            " t.id_card_number = ?, t.gender = ?, t.phone_number = ?, " +
            " t.email = ?, t.address = ? WHERE t.customer_id = ? ";

    private final  String ADD_CUSTOMER=(" insert into customers(customer_code,customer_type_id,full_name, date_of_birth,gender, id_card_number, phone_number, email ,address)\n" +
            "values (?,?,?,?,?,?,?,?,?)");

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
                customer.setId(resultSet.getInt("customer_id"));
                customer.setCode(resultSet.getInt("customer_code"));
                customer.setTypeId(resultSet.getInt("customer_type_id"));
                customer.setName(resultSet.getString("full_name"));
                customer.setBirthday(resultSet.getString("date_of_birth"));
                customer.setGender(resultSet.getString("gender"));
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
       Customer customer=new Customer();
       try {
           PreparedStatement preparedStatement=baseRepository.connectDataBase().prepareStatement(FIND_BY_ID);
           preparedStatement.setInt(1,id);
            ResultSet resultSet=preparedStatement.executeQuery();
            if(resultSet.next()){
                customer.setId(id);
                customer.setCode(resultSet.getInt("customer_code"));
                customer.setTypeId(resultSet.getInt("customer_type_id"));
                customer.setName(resultSet.getString("full_name"));
                customer.setBirthday(resultSet.getString("date_of_birth"));
                customer.setGender(resultSet.getString("gender"));
                customer.setIdCard(resultSet.getString("id_card_number"));
                customer.setPhone(resultSet.getString("phone_number"));
                customer.setEmail(resultSet.getString("email"));
                customer.setAddress(resultSet.getString("address"));
            }
       } catch (SQLException throwables) {
           throwables.printStackTrace();
       }
       return customer;
    }

    @Override
    public void update(int id, Customer customer) {
        try {
                PreparedStatement preparedStatement=baseRepository.connectDataBase().prepareStatement(UPDATE);
            preparedStatement.setInt(1,customer.getCode());
            preparedStatement.setInt(2,customer.getTypeId());
            preparedStatement.setString(3,customer.getName());
            preparedStatement.setString(4,customer.getBirthday());
            preparedStatement.setString(5,customer.getGender());
            preparedStatement.setString(6,customer.getIdCard());
            preparedStatement.setString(7,customer.getPhone());
            preparedStatement.setString(8,customer.getEmail());
            preparedStatement.setString(9,customer.getAddress());
            preparedStatement.setInt(10,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public boolean add(Customer customer) {
            try{
                Connection connection=baseRepository.connectDataBase();
                PreparedStatement statement=connection.prepareStatement(ADD_CUSTOMER);
                statement.setInt(1,customer.getCode());
                statement.setInt(2,customer.getTypeId());
                statement.setString(3,customer.getName());
                statement.setString(4,customer.getBirthday());
                statement.setString(5,customer.getGender());
                statement.setString(6,customer.getIdCard());
                statement.setString(7,customer.getPhone());
                statement.setString(8,customer.getEmail());
                statement.setString(9,customer.getAddress());
                statement.executeUpdate();
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return false;
        }


    @Override
    public void remove(int id) {
            try {
                PreparedStatement statement=this.baseRepository.connectDataBase().prepareStatement(DELETE_CUSTOMER);
                statement.setString(1,String.valueOf(id));
                statement.executeUpdate();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
    }

    @Override
    public List<Customer> sort() {
        return null;
    }

    @Override
    public List<Customer> searchByName(String name) {
        return null;
    }


}
