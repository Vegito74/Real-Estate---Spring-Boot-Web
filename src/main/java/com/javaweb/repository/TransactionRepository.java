package com.javaweb.repository;

import com.javaweb.entity.CustomerEntity;
import com.javaweb.entity.TransactionEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface TransactionRepository extends JpaRepository<TransactionEntity, Long> {
    List<TransactionEntity> findAllByCustomerIdAndCode(Long id, String code);
    List<TransactionEntity> findAllByCustomer(CustomerEntity customer);
}
