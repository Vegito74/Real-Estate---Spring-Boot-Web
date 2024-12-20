package com.javaweb.service.impl;

import com.javaweb.converter.CustomerConverter;
import com.javaweb.entity.CustomerEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.enums.TransactionStatus;
import com.javaweb.model.dto.AssignmentCustomerDTO;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.model.request.CustomerSearchRequest;
import com.javaweb.model.response.CustomerNewReponse;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.CustomerRepository;
import com.javaweb.repository.TransactionRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.repository.custom.CustomerRepositoryCustom;
import com.javaweb.service.CustomerService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Transactional
@Service
public class CustomerServiceImpl implements CustomerService {
    private final ModelMapper modelMapper;

    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private TransactionRepository transactionRepository;

    public CustomerServiceImpl(ModelMapper modelMapper) {
        this.modelMapper = modelMapper;
    }

    @Autowired
    private CustomerConverter customerConverter;

    @Autowired
    private UserServiceImpl userServiceImpl;
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CustomerRepositoryCustom customerRepositoryCustom;
    @Override
    public List<CustomerNewReponse> findAllNewCustomers() {
        List<CustomerEntity> customerEntities = customerRepository.findAllByStatus(TransactionStatus.CHUA_XU_LY.name());
        List<CustomerNewReponse> customerNewReponses = new ArrayList<>();
        for (CustomerEntity item : customerEntities) {
            customerNewReponses.add(modelMapper.map(item, CustomerNewReponse.class));
        }
        return customerNewReponses;
    }

    @Override
    public List<CustomerDTO> findAllCustomers(CustomerSearchRequest customerSearchRequest) {
        List<CustomerEntity> customerEntities = customerRepositoryCustom.findAll(customerSearchRequest);
        List<CustomerDTO> customerDTOs = new ArrayList<>();
        for (CustomerEntity item : customerEntities) {
            customerDTOs.add(customerConverter.toCustomerDTO(item));
        }
        return customerDTOs;
    }

    @Override
    public List<CustomerDTO> findAll() {
        List<CustomerEntity> customerEntities = customerRepository.findAll();
        List<CustomerDTO> customerDTOs = new ArrayList<>();
        for (CustomerEntity item : customerEntities) {
            customerDTOs.add(customerConverter.toCustomerDTO(item));
        }
        return customerDTOs;
    }

    @Override
    public CustomerDTO findCustomerById(Long id) {
        CustomerEntity customerEntity = customerRepository.findCustomerEntityById(id);
        CustomerDTO customerDTO = modelMapper.map(customerEntity, CustomerDTO.class);
        return customerDTO;
    }

    @Override
    public void addOrUpdateCustomer(CustomerDTO customerDTO) {
        CustomerEntity customerEntity = customerConverter.toCustomerEntity(customerDTO);
        customerRepository.save(customerEntity);
    }

    @Override
    public ResponseDTO getStaffs(Long id) {
        CustomerEntity customerEntity = customerRepository.findCustomerEntityById(id);
        List<UserEntity> staffs = userRepository.findByStatusAndRoles_Code(1,"STAFF");
        List<UserEntity> staffAssigment = customerEntity.getUserEntities();
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

    @Override
    public void addAssignmentCustomer(AssignmentCustomerDTO assignmentCustomerDTO) {
        CustomerEntity customerEntity = customerRepository.findCustomerEntityById(assignmentCustomerDTO.getCustomerId());
        if(customerEntity.getStatus().equals(TransactionStatus.CHUA_XU_LY.name())){// Chuyển trạng thái về đang xử lý khi giao cho nhân viên
            customerEntity.setStatus(TransactionStatus.DANG_XU_LY.name());
        }
        List<UserEntity> staffs = userRepository.findByIdIn(assignmentCustomerDTO.getStaffs());
        customerEntity.setUserEntities(staffs);
        customerRepository.save(customerEntity);

    }

    @Override
    public void deleteCustomer(Long id) {
        customerRepository.deleteById(id);
    }

    @Override
    public Long countCustomers(String status) {// Lấy số lượng khách hàng đang chờ xử lý
        return customerRepository.countAllByStatus(status);
    }
}
