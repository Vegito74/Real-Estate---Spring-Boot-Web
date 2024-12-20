package com.javaweb.repository;

import com.javaweb.entity.CustomerEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CustomerRepository extends JpaRepository<CustomerEntity, Long> {
    List<CustomerEntity> findAllByUserEntitiesIsNull();
    CustomerEntity findCustomerEntityById(Long id);
    Long countAllByStatus(String status);
    List<CustomerEntity> findAllByStatus( String status);

}
