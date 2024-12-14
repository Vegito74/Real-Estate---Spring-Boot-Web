package com.javaweb.controller.admin;

import com.javaweb.model.response.CustomerNewReponse;
import com.javaweb.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/admin/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/home");
		List<CustomerNewReponse> cr = customerService.findAllNewCustomers();
		mav.addObject("customers", cr);
		return mav;
	}
}
