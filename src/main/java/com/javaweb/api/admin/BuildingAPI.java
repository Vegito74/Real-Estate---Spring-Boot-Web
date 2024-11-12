package com.javaweb.api.admin;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.dto.BuildingDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/building")
public class BuildingAPI {

    @PostMapping
    public BuildingDTO addOrUpdateBuilding(@RequestBody BuildingDTO  buildingDTO) {
        // xuống DB để updat or thêm
        return buildingDTO;
    }

    @DeleteMapping("/{ids}")
    public void deleteBuilding(@PathVariable List<Long> ids) {
        //Xuống DB
        System.out.println("OK");
    }
}
