package com.javaweb.service.impl;

import com.javaweb.entity.TransactionEntity;
import com.javaweb.model.dto.TransactionDTO;
import com.javaweb.repository.TransactionRepository;
import com.javaweb.service.TransactionService;
import com.javaweb.utils.NumberUtils;
import com.javaweb.utils.StringUtils;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Transactional
@Service
public class TransactionServiceImpl implements TransactionService {
    @Autowired
    private TransactionRepository transactionRepository;
    @Autowired
    private ModelMapper modelMapper;

    @Override
    public List<TransactionDTO> getAllTransactions(Long id, String transactionType) {
        List<TransactionEntity> transactionEntitys = transactionRepository.findAllByCustomerIdAndCode(id, transactionType);
        List<TransactionDTO> transactionDTOs = new ArrayList<>();
        for (TransactionEntity transactionEntity : transactionEntitys) {
            transactionDTOs.add(modelMapper.map(transactionEntity, TransactionDTO.class));
        }
        return transactionDTOs;
    }

    @Override
    public void saveTransaction(TransactionDTO transactionDTO) {
        TransactionEntity transactionEntity = modelMapper.map(transactionDTO, TransactionEntity.class);
        if(transactionDTO.getId()!=null){
            TransactionEntity item = transactionRepository.getOne(transactionDTO.getId());
            transactionEntity.setCreatedBy(item.getCreatedBy());
            transactionEntity.setCreatedDate(item.getCreatedDate());
        }
        transactionRepository.save(transactionEntity);
    }

    @Override
    public TransactionDTO getTransaction(Long id) {
       TransactionEntity transactionEntity = transactionRepository.findById(id).get();
       return modelMapper.map(transactionEntity, TransactionDTO.class);
    }
}
