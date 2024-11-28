package com.javaweb.converter;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.model.dto.BuildingDTO;
import org.springframework.stereotype.Component;


@Component
public class RentAreaConverter {
    public RentAreaEntity toRentAreaEntity(BuildingDTO buildingDTO, Long val) {
        BuildingEntity building = new BuildingEntity();
        building.setId(buildingDTO.getId());
        RentAreaEntity rentArea = new RentAreaEntity();
        rentArea.setValue(val);
        rentArea.setBuilding(building);
        return rentArea;
    }
}
