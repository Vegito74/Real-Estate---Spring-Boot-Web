package com.javaweb.converter;

import com.javaweb.entity.CustomerEntity;
import com.javaweb.entity.TransactionEntity;
import com.javaweb.enums.TransactionStatus;
import com.javaweb.enums.TransactionType;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.repository.CustomerRepository;
import com.javaweb.repository.TransactionRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Map;
import java.util.Objects;

@Component
public class CustomerConverter {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private TransactionRepository transactionRepository;

    public CustomerDTO toCustomerDTO(CustomerEntity customerEntity){
        CustomerDTO customerDTO = modelMapper.map(customerEntity, CustomerDTO.class);
        Map<String, String> transactionType = TransactionStatus.type();
        customerDTO.setStatus(transactionType.get(customerEntity.getStatus())); //Tìm kiếm trong Map
        if(Objects.equals(customerEntity.getCreatedBy(), "anonymousUser")){
            customerDTO.setCreatedBy("Khách Hàng");
        }
        return customerDTO;

    }

    public CustomerEntity toCustomerEntity(CustomerDTO customerDTO){
        CustomerEntity customerEntity = modelMapper.map(customerDTO, CustomerEntity.class);

        if(customerDTO.getId()!=null){
            customerEntity.setTransactions(transactionRepository.findAllByCustomer(customerEntity));
            CustomerEntity customer = customerRepository.findById(customerDTO.getId()).get();
            customerEntity.setCreatedDate(customer.getCreatedDate());
            customerEntity.setCreatedBy(customer.getCreatedBy());
        }
        return customerEntity;
    }
}
