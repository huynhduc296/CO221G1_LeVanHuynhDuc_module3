package model.bean;

public class CustomerType {
   private int typeId;
   private String customerTypeName;

    public CustomerType() {
    }

    public CustomerType(int customerTypeID, String customerTypeName) {
        this.typeId = customerTypeID;
        this.customerTypeName = customerTypeName;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getCustomerTypeName() {
        return customerTypeName;
    }

    public void setCustomerTypeName(String customerTypeName) {
        this.customerTypeName = customerTypeName;
    }
}
