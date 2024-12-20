package com.javaweb.api.admin;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.AssignmentCustomerDTO;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/customer")
public class CustomerAPI {

    @Autowired
    private CustomerService customerService;
    @PutMapping
    public void addOrUpdateCustomer(@RequestBody CustomerDTO customerDTO){
        customerService.addOrUpdateCustomer(customerDTO);
    }

    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable Long id) {
        ResponseDTO result = customerService.getStaffs(id);
        return  result;
    }

    @DeleteMapping("/{id}")
    public void deleteCustomer(@PathVariable Long id) {
        customerService.deleteCustomer(id);
    }
    @PutMapping("/assignment")
    public void updateAssignmentBuilding(@RequestBody AssignmentCustomerDTO assignmentCustomerDTO) {
        customerService.addAssignmentCustomer(assignmentCustomerDTO);
    }


}
