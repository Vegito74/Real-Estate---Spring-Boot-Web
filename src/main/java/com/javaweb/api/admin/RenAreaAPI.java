package com.javaweb.api.admin;

import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.model.dto.RentAreaDTO;
import com.javaweb.service.RentAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/rent-area")
public class RenAreaAPI {
    @Autowired
    private RentAreaService rentAreaService;

    @PutMapping
    public void addOrUpdateRentArea(@RequestBody RentAreaDTO rentAreaDTO){
        rentAreaService.addRentArea(rentAreaDTO);
    }

    @PutMapping("/rental")
    public void addRental(@RequestBody RentAreaDTO rentAreaDTO){
        rentAreaService.addRentalCustomer(rentAreaDTO.getId(), rentAreaDTO.getCustomerId());
    }

    @DeleteMapping("/{id}")
    public void deleteRentArea(@PathVariable Long id){
        rentAreaService.deleteRentArea(id);
    }

}
