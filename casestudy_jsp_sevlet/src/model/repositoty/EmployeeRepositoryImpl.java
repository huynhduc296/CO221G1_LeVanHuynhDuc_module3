package model.repositoty;

import model.bean.Customer;
import model.bean.Employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepositoryImpl implements EmployeeRepository{
    private final String FIND_ALL = "select * from employees";

    private final String SELECT_EMPLOYEE_BY_ID=  ("update employees\n" +
            "set Employee_name = ? , position_id = ? , employee_level_id = ?,department_id = ? , date_of_birth = ? , id_card_number = ?, salary = ?, phone_number = ?, email = ?, address = ? \n" +
            "where employee_id = ?");

    private final  String ADD_EMPLOYEE=(" insert into Employees(Employee_name,position_id,employee_level_id,department_id,date_of_birth,id_card_number,salary,phone_number,email, address) \n" +
            "values (?,?,?,?,?,?,?)");

    private final String DELETE_EMPLOYEE=("delete from employees\n" +
            "where employee_id = ?");
    BaseRepository baseRepository =new BaseRepository();

    @Override
    public List<Employee> findByAll() {
       List<Employee>employeeList=new ArrayList<>();
       try {
           Statement statement=baseRepository.connectDataBase().createStatement();
           ResultSet resultSet=statement.executeQuery(FIND_ALL);
           Employee employee;
            while (resultSet.next()){
                employee = new Employee();
                employee.setId(resultSet.getInt("employee_id"));
                employee.setName(resultSet.getString("Employee_name"));
                employee.setPositionId(resultSet.getInt("position_id"));
                employee.setLevelId(resultSet.getInt("employee_level_id"));
                employee.setDepartmentId(resultSet.getInt("department_id"));
                employee.setBirthday(resultSet.getString("date_of_birth"));
                employee.setIdCard(resultSet.getString("id_card_number"));
                employee.setPhone(resultSet.getString("phone_number"));
                employee.setEmail(resultSet.getString("email"));
                employee.setAddress(resultSet.getString("address"));
                employeeList.add(employee);
            }
       } catch (SQLException throwables) {
           throwables.printStackTrace();
       }
       return employeeList;
    }

    @Override
    public Employee findById(int id) {
        Employee employee=new Employee();
        try {
            PreparedStatement preparedStatement=baseRepository.connectDataBase().prepareStatement(SELECT_EMPLOYEE_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet=preparedStatement.executeQuery();
            if(resultSet.next()){
                employee.setId(id);
                employee.setName(resultSet.getString("Employee_name"));
                employee.setPositionId(resultSet.getInt("position_id"));
                employee.setLevelId(resultSet.getInt("employee_level_id"));
                employee.setDepartmentId(resultSet.getInt("department_id"));
                employee.setBirthday(resultSet.getString("date_of_birth"));
                employee.setIdCard(resultSet.getString("id_card_number"));
                employee.setSalary(resultSet.getString("salary"));
                employee.setPhone(resultSet.getString("phone_number"));
                employee.setEmail(resultSet.getString("email"));
                employee.setAddress(resultSet.getString("address"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employee;
    }

    @Override
    public void update(int id, Employee employee) {
        try {
            PreparedStatement preparedStatement=baseRepository.connectDataBase().prepareStatement(SELECT_EMPLOYEE_BY_ID);
            preparedStatement.setString(1,employee.getName());
            preparedStatement.setInt(2,employee.getPositionId());
            preparedStatement.setInt(3,employee.getLevelId());
            preparedStatement.setInt(4,employee.getDepartmentId());
            preparedStatement.setString(5,employee.getBirthday());
            preparedStatement.setString(6,employee.getIdCard());
            preparedStatement.setString(7,employee.getSalary());
            preparedStatement.setString(8,employee.getPhone());
            preparedStatement.setString(9,employee.getEmail());
            preparedStatement.setString(10,employee.getAddress());
            preparedStatement.setInt(11,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public boolean add(Employee employee) {
        try{
            Connection connection=baseRepository.connectDataBase();
            PreparedStatement statement=connection.prepareStatement(ADD_EMPLOYEE);
            statement.setString(1,employee.getName());
            statement.setInt(2,employee.getPositionId());
            statement.setInt(3,employee.getLevelId());
            statement.setInt(4,employee.getDepartmentId());
            statement.setString(5,employee.getBirthday());
            statement.setString(6,employee.getIdCard());
            statement.setString(7,employee.getSalary());
            statement.setString(8,employee.getPhone());
            statement.setString(9,employee.getEmail());
            statement.setString(10,employee.getAddress());
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
                PreparedStatement statement=this.baseRepository.connectDataBase().prepareStatement(DELETE_EMPLOYEE);
                statement.setString(1,String.valueOf(id));
                statement.executeUpdate();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
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
