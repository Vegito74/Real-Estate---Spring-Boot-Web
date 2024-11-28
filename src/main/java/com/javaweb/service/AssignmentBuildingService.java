package com.javaweb.service;

import com.javaweb.model.dto.AssignmentBuildingDTO;

import java.util.List;

public interface AssignmentBuildingService {
    void deleteByBuildingId(List<Long> buildingIds);
    void addAssigmentBuilding(AssignmentBuildingDTO assignmentBuildingDTO);
}
