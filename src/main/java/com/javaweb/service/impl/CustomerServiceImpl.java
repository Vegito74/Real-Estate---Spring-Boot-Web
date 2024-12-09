package com.javaweb.service.impl;

import com.javaweb.entity.CustomerEntity;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.repository.CustomerRepository;
import com.javaweb.service.CustomerService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Transactional
@Service
public class CustomerServiceImpl implements CustomerService {
    private final ModelMapper modelMapper;

    @Autowired
    CustomerRepository customerRepository;
    public CustomerServiceImpl(ModelMapper modelMapper) {
        this.modelMapper = modelMapper;
    }

    @Override
    public void addOrUpdateCustomer(CustomerDTO customerDTO) {
        CustomerEntity customerEntity = modelMapper.map(customerDTO, CustomerEntity.class);
        customerRepository.save(customerEntity);
    }
}
