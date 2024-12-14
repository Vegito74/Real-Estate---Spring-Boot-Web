package com.javaweb.service;

import com.javaweb.model.dto.AssignmentCustomerDTO;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.model.response.CustomerNewReponse;
import com.javaweb.model.response.ResponseDTO;

import java.util.List;

public interface CustomerService {
    List<CustomerNewReponse> findAllNewCustomers();
    List<CustomerDTO> findAllCustomers();
    CustomerDTO findCustomerById(Long id);
    void addOrUpdateCustomer(CustomerDTO customerDTO);
    ResponseDTO getStaffs(Long id);
    void addAssignmentCustomer(AssignmentCustomerDTO assignmentCustomerDTO);
    void deleteCustomer(Long id);
}
