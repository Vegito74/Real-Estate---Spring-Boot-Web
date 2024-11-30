package com.javaweb.service.impl;

import com.javaweb.converter.RentAreaConverter;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.RentAreaRepository;
import com.javaweb.service.RentAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
@Service
public class RentAreaServiceImpl implements RentAreaService {
    @Autowired
    private BuildingRepository buildingRepository;

    @Autowired
    private RentAreaRepository rentAreaRepository;

    @Autowired
    private RentAreaConverter rentAreaConverter;

    @Override
    public void addRentArea(BuildingDTO buildingDTO) {

//        if (buildingDTO.getId() != null ) {
//            BuildingEntity buildingEntity = buildingRepository.findById(buildingDTO.getId()).get();
//            rentAreaRepository.deleteByBuilding(buildingEntity);
//        }// Xoá dữ liệu cũ
//
//        String[] rentAreas = buildingDTO.getRentArea().trim().split(",");
//        for (String val : rentAreas){
//            RentAreaEntity rentAreaEntity = rentAreaConverter.toRentAreaEntity(buildingDTO, Long.valueOf(val));
//            rentAreaRepository.save(rentAreaEntity);
//        }
    }

    @Override
    public void deleteByBuildingId(List<Long> ids) {
//
        rentAreaRepository.deleteByBuildingIdIn(ids);

    }
}
