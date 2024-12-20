package com.javaweb.controller.admin;

import com.javaweb.enums.TransactionStatus;
import com.javaweb.enums.TransactionType;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.model.dto.TransactionDTO;
import com.javaweb.model.request.CustomerSearchRequest;
import com.javaweb.service.CustomerService;
import com.javaweb.service.RentAreaService;
import com.javaweb.service.TransactionService;
import com.javaweb.service.impl.RentAreaServiceImpl;
import com.javaweb.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller(value = "customerControllerOfAdmin")
public class CustomerController {

    @Autowired
    private UserServiceImpl userServiceImpl;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private TransactionService transactionService;
    @Autowired
    private RentAreaService rentAreaService;

    @RequestMapping(value = "/admin/customer-list", method = RequestMethod.GET)
    public ModelAndView listus(@ModelAttribute CustomerSearchRequest customerSearchRequest, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/customer/list");
        List<CustomerDTO> customerDTOList = customerService.findAllCustomers(customerSearchRequest);

        mav.addObject("listStaff", userServiceImpl.getStaffs()); // danh sách nhân viên
        mav.addObject("customerDTOList", customerDTOList);
        mav.addObject("customer", customerSearchRequest);

        return mav;
    }

    @RequestMapping(value = "/admin/customer-new", method = RequestMethod.GET)
    public ModelAndView addCustomer(@ModelAttribute CustomerDTO customer) {
        ModelAndView mav = new ModelAndView("admin/customer/add-new");
        mav.addObject("customer", customer);
        Map<String, String> transactionStatus = TransactionStatus.type(); // Khai báo type trong map
        mav.addObject("transactionStatus", transactionStatus);
        return mav;
    }

    @RequestMapping(value = "/admin/customer-edit", method = RequestMethod.GET)
    public ModelAndView transactionManager(@ModelAttribute CustomerDTO customer) {
        ModelAndView mav = new ModelAndView("admin/customer/edit");
        return mav;
    }

    @RequestMapping(value = "/admin/customer-edit-{id}", method = RequestMethod.GET)
    public ModelAndView editCustomer(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView("admin/customer/edit");
        CustomerDTO customerDTO = customerService.findCustomerById(id); // lấy thông tin customer
        Map<String, String> transactionStatus = TransactionStatus.type(); // Khai báo type trong map
        List<TransactionDTO> transactionCSKH = transactionService.getAllTransactions(id, TransactionType.CSKH.name());
        List<TransactionDTO> transactionGDTT = transactionService.getAllTransactions(id, TransactionType.GDTT.name());
        mav.addObject("customer", customerDTO);
        mav.addObject("transactionStatus", transactionStatus);
        mav.addObject("transactionType", TransactionType.type());
        mav.addObject("CSKH", transactionCSKH);
        mav.addObject("GDTT", transactionGDTT);
        mav.addObject("rentalCustomers", rentAreaService.getRentalCustomers(id));
        return mav;
    }

}
