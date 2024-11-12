package com.javaweb.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "assignmentbuilding")
public class AssignmentBuildingEntity extends BaseEntity{
    @ManyToOne
    @JoinColumn(name = "staffid", referencedColumnName = "id", nullable = false)
    private UserEntity staff;

    @ManyToOne
    @JoinColumn(name = "buildingid", referencedColumnName = "id", nullable = false)
    private BuildingEntity building;

    public UserEntity getStaff() {
        return staff;
    }

    public void setStaff(UserEntity staff) {
        this.staff = staff;
    }

    public BuildingEntity getBuilding() {
        return building;
    }

    public void setBuilding(BuildingEntity building) {
        this.building = building;
    }
}
