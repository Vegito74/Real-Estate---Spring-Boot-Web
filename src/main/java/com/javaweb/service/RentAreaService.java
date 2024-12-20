package com.javaweb.service;


import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.dto.RentAreaDTO;
import com.javaweb.model.response.RentalCustomerReponse;
import org.springframework.stereotype.Service;

import java.util.List;


public interface RentAreaService {
    void addRentArea(RentAreaDTO rentAreaDTO);
    void deleteRentArea(Long rentAreaId);
    void addRentalCustomer(Long rentAreaId, Long customerId);
    List<RentAreaDTO> getRentAreas(Long buildingId);
    List<RentalCustomerReponse> getRentalCustomers(Long customerId);

}

