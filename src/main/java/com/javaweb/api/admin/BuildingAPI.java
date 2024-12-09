package com.javaweb.api.admin;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.AssignmentBuildingService;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/building")
public class BuildingAPI {

    @Autowired
    private BuildingService buildingService;


    @PostMapping
    public ResponseEntity<BuildingDTO> addOrUpdateBuilding(@RequestBody BuildingDTO  buildingDTO) {

        return ResponseEntity.ok(buildingService.addOrUpdateBuilding(buildingDTO));
    }

    @DeleteMapping("/{ids}")
    public boolean deleteBuilding(@PathVariable List<Long> ids) {
       buildingService.deleteBuilding(ids);
       return true;
    }

    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable Long id) {
        ResponseDTO result = buildingService.listStaffs(id);
        return  result;
    }

    @PutMapping("/assignment")
    public boolean updateAssignmentBuilding(@RequestBody AssignmentBuildingDTO assignmentBuildingDTO) {
        buildingService.addAssignmentBuildingEntity(assignmentBuildingDTO);
        return true;
    }
}
