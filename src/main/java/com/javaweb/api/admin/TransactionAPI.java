package com.javaweb.api.admin;

import com.javaweb.model.dto.TransactionDTO;
import com.javaweb.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/transaction")
public class TransactionAPI {

    @Autowired
    private TransactionService transactionService;
    @PostMapping
    public void saveTransaction(@RequestBody TransactionDTO transactionDTO) {
        transactionService.saveTransaction(transactionDTO);
    }

    @GetMapping("/{id}/detail")
    public TransactionDTO getTransaction(@PathVariable Long id) {
        return  transactionService.getTransaction(id);
    }

    @DeleteMapping("/{id}")
    public void deleteTransaction(@PathVariable Long id) {
        transactionService.deleteTransaction(id);
    }

}
