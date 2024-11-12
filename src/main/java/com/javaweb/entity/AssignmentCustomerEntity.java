package com.javaweb.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "assignmentcustomer")
public class AssignmentCustomerEntity extends BaseEntity{

    @ManyToOne
    @JoinColumn(name = "staffid", referencedColumnName = "id", nullable = false)
    private UserEntity staff;

    @ManyToOne
    @JoinColumn(name = "customerid", referencedColumnName = "id", nullable = false)
    private CustomerEntity customer;

    public UserEntity getStaff() {
        return staff;
    }

    public void setStaff(UserEntity staff) {
        this.staff = staff;
    }

    public CustomerEntity getCustomer() {
        return customer;
    }

    public void setCustomer(CustomerEntity customer) {
        this.customer = customer;
    }
}
