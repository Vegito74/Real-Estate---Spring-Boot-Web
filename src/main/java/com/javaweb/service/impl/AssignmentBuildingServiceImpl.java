//package com.javaweb.service.impl;
//
//import com.javaweb.entity.BuildingEntity;
//import com.javaweb.entity.UserEntity;
//import com.javaweb.model.dto.AssignmentBuildingDTO;
//import com.javaweb.repository.AssignmentBuildingRepository;
//import com.javaweb.repository.BuildingRepository;
//import com.javaweb.repository.UserRepository;
//import com.javaweb.service.AssignmentBuildingService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.List;
//@Transactional
//@Service
//public class AssignmentBuildingServiceImpl implements AssignmentBuildingService {
//   @Autowired
//   private BuildingRepository buildingRepository;
//
////   @Autowired
////   private AssignmentBuildingRepository assignmentBuildingRepository;
//    @Autowired
//    private UserRepository userRepository;
//
//    @Override
//    public void deleteByBuildingId(List<Long> buildingIds) {
//        assignmentBuildingRepository.deleteByBuildingIdIn(buildingIds);
//    }
//
//    @Override
//    public void addAssigmentBuilding(AssignmentBuildingDTO assignmentBuildingDTO) {
////        BuildingEntity buildingEntity = buildingRepository.findById(assignmentBuildingDTO.getBuildingId()).get();
////        assignmentBuildingRepository.deleteByBuilding(buildingEntity);
////
////        List<Long> staffIds = assignmentBuildingDTO.getStaffs();
////        for (Long it : staffIds) {
////            AssignmentBuildingEntity assignmentBuildingEntity = new AssignmentBuildingEntity();
////            assignmentBuildingEntity.setBuilding(buildingEntity);
////
////            UserEntity userEntity = userRepository.findById(it).get();
////            assignmentBuildingEntity.setStaff(userEntity);
////
////            assignmentBuildingRepository.save(assignmentBuildingEntity);
////        }
//    }
//}
