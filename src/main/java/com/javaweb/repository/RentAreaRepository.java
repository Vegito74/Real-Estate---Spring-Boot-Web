package com.javaweb.repository;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentAreaRepository extends JpaRepository<RentAreaEntity, Long> {
    void deleteByBuilding(BuildingEntity buildingEntity);
    void deleteByBuildingIn(List<Long> buildingIds);
    void deleteByBuildingIdIn(List<Long> buildingIds);
}
