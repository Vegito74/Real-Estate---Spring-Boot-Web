package com.javaweb.service;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public interface BuildingService {
    ResponseDTO listStaffs(Long buildingId);
    BuildingDTO addOrUpdateBuilding(BuildingDTO buildingDTO);
    List<BuildingSearchResponse> findAll(BuildingSearchRequest buildingSearchRequest);
    void deleteBuilding(List<Long>  buildingId);
    BuildingDTO getBuildingById(Long buildingId);
    AssignmentBuildingDTO addAssignmentBuildingEntity(AssignmentBuildingDTO assignmentBuildingDTO);
    Long getTheNumberOfBuildings();
    List<BuildingSearchResponse> findTop5Building();
}
