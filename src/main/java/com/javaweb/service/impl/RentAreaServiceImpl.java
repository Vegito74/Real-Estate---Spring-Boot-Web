package com.javaweb.service.impl;

import com.javaweb.entity.RentAreaEntity;
import com.javaweb.entity.TransactionEntity;
import com.javaweb.enums.RentalStatus;
import com.javaweb.enums.TransactionStatus;
import com.javaweb.enums.TransactionType;
import com.javaweb.model.dto.RentAreaDTO;
import com.javaweb.model.response.RentalCustomerReponse;
import com.javaweb.repository.CustomerRepository;
import com.javaweb.repository.RentAreaRepository;
import com.javaweb.repository.TransactionRepository;
import com.javaweb.service.CustomerService;
import com.javaweb.service.RentAreaService;
import com.javaweb.service.TransactionService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@Transactional
@Service
public class RentAreaServiceImpl implements RentAreaService {


    @Autowired
    private RentAreaRepository rentAreaRepository;

    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private TransactionRepository transactionRepository;

    @Autowired
    private TransactionService transactionService;

    @Autowired
    private CustomerRepository customerRepository;
    @Override
    public void addRentArea(RentAreaDTO rentAreaDTO) {
        RentAreaEntity rentAreaEntity = modelMapper.map(rentAreaDTO, RentAreaEntity.class);
        rentAreaEntity.setStatus(RentalStatus.AVAILABLE.name());// set giá trị mặc định còn trống
        rentAreaRepository.save(rentAreaEntity);
    }

    @Override
    public void deleteRentArea(Long renAreaId) {
        rentAreaRepository.deleteById(renAreaId);
    }

    @Override
    public void addRentalCustomer(Long rentAreaId, Long customerId) {
        RentAreaEntity rentAreaEntity = rentAreaRepository.findById(rentAreaId).get();
        TransactionEntity transactionEntity = new TransactionEntity();
        if(customerId == null || customerId == 0){
            rentAreaEntity.setStatus(RentalStatus.AVAILABLE.name());
            rentAreaEntity.setCustomerId(customerId);
        }
        else {
            rentAreaEntity.setCustomerId(customerId);
            rentAreaEntity.setStatus(RentalStatus.RENTED.name());

            // Tạo giao dịch
            transactionEntity.setCustomer(customerRepository.findCustomerEntityById(customerId));
            transactionEntity.setCode(TransactionType.GDTT.name());
            transactionEntity.setNote("Bắt đầu thuê "+rentAreaEntity.getBuilding().getName()+", "+rentAreaEntity.getValue()+"m2, "+"Tầng "+rentAreaEntity.getFloor());
            transactionRepository.save(transactionEntity);
        }
        rentAreaRepository.save(rentAreaEntity);
    }


    @Override
    public List<RentAreaDTO> getRentAreas(Long buildingId) {
        List<RentAreaEntity> rentAreaEntities = rentAreaRepository.findAllByBuildingId(buildingId);
        List<RentAreaDTO> rentAreaDTOs = new ArrayList<>();
        for(RentAreaEntity item : rentAreaEntities) {
            rentAreaDTOs.add(modelMapper.map(item, RentAreaDTO.class));
        }
        return rentAreaDTOs;
    }

    @Override
    public List<RentalCustomerReponse> getRentalCustomers(Long customerId) {
        List<RentAreaEntity> rentAreaEntities = rentAreaRepository.findAllByCustomerId(customerId);
        List<RentalCustomerReponse> results = new ArrayList<>();
        for(RentAreaEntity item : rentAreaEntities) {
            RentalCustomerReponse rentalCustomerReponse = modelMapper.map(item, RentalCustomerReponse.class);
            rentalCustomerReponse.setBuildingName(rentAreaEntities.get(0).getBuilding().getName());
            results.add(rentalCustomerReponse);

        }
        return results;
    }
}
