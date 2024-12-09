package com.javaweb.controller.admin;

import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.service.impl.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller(value = "customerControllerOfAdmin")
public class CustomerController {

    private final UserService userService;

    public CustomerController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/admin/customer-list", method = RequestMethod.GET)
    public ModelAndView listus(@ModelAttribute CustomerDTO customer) {
        ModelAndView mav = new ModelAndView("admin/customer/list");
        List<CustomerDTO> customerDTOList = new ArrayList<>();
        CustomerDTO customerDTO = new CustomerDTO();
        customerDTO.setId(1L);
        customerDTO.setFullName("Nguyễn Văn Trọng");
        customerDTO.setEmail("nguy@gmail.com");
        customerDTO.setDemand("");
        customerDTOList.add(customerDTO);
        mav.addObject("listStaff", userService.getStaffs()); // danh sách nhân viên
        mav.addObject("customerDTOList", customerDTOList);
        mav.addObject("customer", customer);

        return mav;
    }

    @RequestMapping(value = "/admin/customer-new", method = RequestMethod.GET)
    public ModelAndView addCustomer(@ModelAttribute CustomerDTO customer) {
        ModelAndView mav = new ModelAndView("admin/customer/add-new");

        return mav;
    }

    @RequestMapping(value = "/admin/customer-edit", method = RequestMethod.GET)
    public ModelAndView transactionManager(@ModelAttribute CustomerDTO customer) {
        ModelAndView mav = new ModelAndView("admin/customer/edit");
        return mav;
    }

}
