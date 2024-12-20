package com.javaweb.entity;
import javax.persistence.*;

@Entity
@Table(name = "rentarea")
public class RentAreaEntity extends BaseEntity{
    @Column(name = "value")
    private Long value;
    @Column(name = "status")
    private String status;

    @Column(name = "floor")
    private String floor;

    @Column(name = "customerid")
    private Long customerId;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    @ManyToOne
    @JoinColumn(name = "buildingid", referencedColumnName = "id")
    private BuildingEntity building;

    public Long getValue() {
        return value;
    }

    public void setValue(Long value) {
        this.value = value;
    }

    public BuildingEntity getBuilding() {
        return building;
    }

    public void setBuilding(BuildingEntity building) {
        this.building = building;
    }
}
