package com.javaweb.service.impl;

import com.javaweb.converter.BuildingDTOConverter;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.AssignmentBuildingRepository;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.AssignmentBuildingService;
import com.javaweb.service.BuildingService;
import com.javaweb.service.RentAreaService;
import com.javaweb.utils.NumberUtils;
import com.javaweb.utils.StringUtils;
import com.javaweb.utils.UploadFileUtils;
import org.apache.tomcat.util.codec.binary.Base64;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    private BuildingRepository buildingRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BuildingDTOConverter buildingDTOConverter;

    @Autowired
    private AssignmentBuildingRepository assignmentBuildingRepository;
    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private AssignmentBuildingService assignmentBuildingService;
    @Autowired
    private RentAreaService rentAreaService;
    @Autowired
    private UploadFileUtils uploadFileUtils;
    @Autowired
    private AssignmentBuildingServiceImpl assignmentBuildingServiceImpl;

    @Override
    public List<BuildingSearchResponse> findAll(BuildingSearchRequest buildingSearchRequest) {

        List<BuildingEntity> buildingEntities = buildingRepository.findAll(buildingSearchRequest); // xuống Repo để lấy danh sách entity cần tìm
        List<BuildingSearchResponse> result = new ArrayList<>();

        for (BuildingEntity item : buildingEntities ) {
            BuildingSearchResponse building = buildingDTOConverter.toBuildingSearchResponse(item);
            result.add(building);
        }
        return result;
    }

    @Override
    public BuildingDTO addOrUpdateBuilding(BuildingDTO buildingDTO) {
        if(!checkAddBuilding(buildingDTO)) return  null;
        Long buildingId = buildingDTO.getId();
        BuildingEntity buildingEntity = modelMapper.map(buildingDTO, BuildingEntity.class);
        buildingEntity.setType(String.join("," , buildingDTO.getTypeCode()));
        if(buildingId != null){
            BuildingEntity foundBuilding = buildingRepository.findById(buildingId)
                    .orElseThrow(()->new RuntimeException("Building not found"));
            buildingEntity.setAvatar(foundBuilding.getAvatar());
        }
        //saveThumbnail(buildingDTO, buildingEntity);
        buildingRepository.save(buildingEntity);
        buildingDTO.setId(buildingEntity.getId());
       if(StringUtils.check(buildingDTO.getRentArea())) rentAreaService.addRentArea(buildingDTO);
       return  buildingDTO;
    }

    private void saveThumbnail(BuildingDTO buildingDTO, BuildingEntity buildingEntity) {
        String path = "/building/" +buildingDTO.getImageName();
        if (null != buildingDTO.getImageBase64()) {
            if (null != buildingDTO.getImage()) {
                if(!path.equals(buildingEntity.getAvatar())){
                    File file = new File("C://home/office" +buildingEntity.getAvatar());
                    file.delete();
                }
            }
        }
        byte[] bytes = Base64.encodeBase64(buildingDTO.getImageBase64().getBytes());
        uploadFileUtils.writeOrUpdate(path, bytes);
        buildingEntity.setAvatar(path);

    }


    public static boolean checkAddBuilding(BuildingDTO buildingDTO) {
        if(!StringUtils.check(buildingDTO.getName())) return false;
        if(!StringUtils.check(buildingDTO.getDistrict())) return false;
        if(!StringUtils.check(buildingDTO.getWard())) return false;
        if(!StringUtils.check(buildingDTO.getStreet())) return false;
        if(!StringUtils.check(buildingDTO.getRentArea())) return false;
       // if(!StringUtils.check(buildingDTO.getRentPriceDescription())) return false;
        if(!NumberUtils.isLong(String.valueOf(buildingDTO.getNumberOfBasement()))) return false;
        if(!NumberUtils.isLong(String.valueOf(buildingDTO.getFloorArea()))) return false;
        //if(!NumberUtils.isLong(buildingDTO.getRentArea())) return false;



        return true;
    }
    @Override
    public void deleteBuilding(List<Long>  buildingId) {
        rentAreaService.deleteByBuildingId(buildingId);
        assignmentBuildingService.deleteByBuildingId(buildingId);
        buildingRepository.deleteByIdIn(buildingId);
    }

    @Override
    public BuildingDTO getBuildingById(Long buildingId) {
        BuildingEntity buildingEntity = buildingRepository.findById(buildingId).get();
        BuildingDTO building = buildingDTOConverter.toBuildingDTO(buildingEntity);
        return building;
    }

    @Override
    public void insertAssignedStaff(AssignmentBuildingDTO assignmentBuildingDTO) {

    }


    @Override
    public ResponseDTO listStaffs(Long buildingId) {
        //BuildingEntity building = buildingRepository.findById(buildingId).get();
        List<UserEntity> staffs = userRepository.findByStatusAndRoles_Code(1,"STAFF");
        List<UserEntity> staffAssigment = userRepository.findAll();
//        List<UserEntity> staffAssigment = building.getUserEntities();
        List<StaffResponseDTO> staffResponseDTOs = new ArrayList<>();
        ResponseDTO responseDTO = new ResponseDTO();
        for (UserEntity staff : staffs) {
            StaffResponseDTO staffResponseDTO = new StaffResponseDTO();
            staffResponseDTO.setFullName(staff.getFullName());
            staffResponseDTO.setStaffId(staff.getId());
            if (staffAssigment.contains(staff)) {
                staffResponseDTO.setChecked("checked");
            }
            else {
                staffResponseDTO.setChecked("");
            }
            staffResponseDTOs.add(staffResponseDTO);
        }
        responseDTO.setData(staffResponseDTOs);
        responseDTO.setMessage("Success");
        return responseDTO;
    }


}
