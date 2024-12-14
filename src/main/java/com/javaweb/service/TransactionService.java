package com.javaweb.service;

import com.javaweb.model.dto.TransactionDTO;

import java.util.List;

public interface TransactionService {
    List<TransactionDTO> getAllTransactions(Long id, String transactionType);
    void saveTransaction(TransactionDTO transactionDTO);
    TransactionDTO getTransaction(Long id);
}
