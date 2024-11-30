package com.javaweb.converter;

import com.javaweb.config.ModelMapperConfig;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.BuildingSearchResponse;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class BuildingDTOConverter {

    @Autowired
            private ModelMapper modelMapper;
    @Autowired
    private RentAreaConverter rentAreaConverter;
    // Chuyển đỏi dữ liệu bằng ModelMapper

    public BuildingSearchResponse toBuildingSearchResponse(BuildingEntity buildingEntity){
        // Chuyển đỏi dữ liệu bằng ModelMapper
        BuildingSearchResponse building = modelMapper.map(buildingEntity, BuildingSearchResponse.class);
        List<RentAreaEntity> rentAreaEntities = buildingEntity.getRentAreas();
        String areaResult = rentAreaEntities.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(",")); // Chuyển đổi từ dạng list => String
        building.setRentArea(areaResult);

        Map<String, String> districts = districtCode.type();//

        String districtName ="";
        if (buildingEntity.getDistrict() != null && buildingEntity.getDistrict() != "") {
            districtName = districts.get(buildingEntity.getDistrict());
        }

        if(districtName != "") {
            building.setAddress(buildingEntity.getStreet() + ", " + buildingEntity.getWard() + ", " +  districtName);

        }

        return building;
    }

    public BuildingDTO toBuildingDTO(BuildingEntity buildingEntity){
        // Chuyển đỏi dữ liệu bằng ModelMapper
        BuildingDTO building = modelMapper.map(buildingEntity, BuildingDTO.class);
        List<RentAreaEntity> rentAreaEntities = buildingEntity.getRentAreas();
        String areaResult = rentAreaEntities.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(",")); // Chuyển đổi từ dạng list => String
        building.setRentArea(areaResult);


        return building;
    }




    public BuildingEntity toBuildingEntity(BuildingDTO buildingDTO){
        BuildingEntity buildingEntity = modelMapper.map(buildingDTO, BuildingEntity.class);
        buildingEntity.setType(String.join("," , buildingDTO.getTypeCode()));
        buildingEntity.setRentAreas(rentAreaConverter.toRentAreaEntityList(buildingDTO, buildingEntity));
        return buildingEntity;
    }


}
