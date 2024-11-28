package com.javaweb.service;


import com.javaweb.model.dto.BuildingDTO;
import org.springframework.stereotype.Service;

import java.util.List;


public interface RentAreaService {
    void addRentArea(BuildingDTO buildingDTO);
    void deleteByBuildingId(List<Long> id);

}

