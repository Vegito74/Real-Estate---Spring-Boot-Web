package com.javaweb.converter;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.model.dto.BuildingDTO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


@Component
public class RentAreaConverter {
    public RentAreaEntity toRentAreaEntity(BuildingEntity buildingEntity, Long val) {
        RentAreaEntity rentArea = new RentAreaEntity();
        rentArea.setValue(val);
        rentArea.setBuilding(buildingEntity);
        return rentArea;
    }

    public List<RentAreaEntity> toRentAreaEntityList(BuildingDTO buildingDTO, BuildingEntity buildingEntity) {
        String[] rentAreas = buildingDTO.getRentArea().split(",");
        List<RentAreaEntity> rentAreaList = new ArrayList<>();
        for (String rentArea : rentAreas) {
            rentAreaList.add(toRentAreaEntity( buildingEntity, Long.valueOf(rentArea)));
        }
        return rentAreaList;
    }
}
