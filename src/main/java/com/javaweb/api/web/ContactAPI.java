package com.javaweb.api.web;

import com.javaweb.enums.TransactionType;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/contract")
public class ContactAPI {

    @Autowired
    private CustomerService customerService;
    @PutMapping("/customer")
    public void addCustomer(@RequestBody CustomerDTO customerDTO){
        customerDTO.setStatus(TransactionType.CHUA_XU_LY.name());
        customerService.addOrUpdateCustomer(customerDTO);
    }
}
