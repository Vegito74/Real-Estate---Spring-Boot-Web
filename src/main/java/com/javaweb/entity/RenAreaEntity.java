package com.javaweb.entity;
import javax.persistence.*;

@Entity
@Table(name = "rentarea")
public class RenAreaEntity extends BaseEntity{
    @Column(name = "value")
    private Long value;

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
