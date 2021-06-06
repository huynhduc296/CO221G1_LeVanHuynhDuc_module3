package model.bean;

public class Employee {
    private  int id;
    private String name;
    private int positionId;
    private int levelId;
    private int departmentId;
    private String birthday;
    private String idCard;
    private String salary;
    private String phone;
    private String email;
    private String address;

    public Employee() {
    }

    public Employee(int id, String name, int positionId, int levelId, int departmentId, String birthday, String idCard, String salary, String phone, String email, String address) {
        this.id = id;
        this.name = name;
        this.positionId = positionId;
        this.levelId = levelId;
        this.departmentId = departmentId;
        this.birthday = birthday;
        this.idCard = idCard;
        this.salary = salary;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public Employee(String name, int positionId, int levelId, int departmentId, String birthday, String idCard, String salary, String phone, String email, String address) {
        this.name = name;
        this.positionId = positionId;
        this.levelId = levelId;
        this.departmentId = departmentId;
        this.birthday = birthday;
        this.idCard = idCard;
        this.salary = salary;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    public int getLevelId() {
        return levelId;
    }

    public void setLevelId(int levelId) {
        this.levelId = levelId;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
