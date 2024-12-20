package com.javaweb.controller.admin;

import com.javaweb.enums.TransactionStatus;
import com.javaweb.enums.TransactionType;
import com.javaweb.model.response.CustomerNewReponse;
import com.javaweb.service.BuildingService;
import com.javaweb.service.CustomerService;
import com.javaweb.service.IUserService;
import com.javaweb.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	private CustomerService customerService;

    @Autowired
    private BuildingService buildingService;

	@Autowired
	private IUserService userService;

	@Autowired
	private TransactionService transactionService;

	@RequestMapping(value = "/admin/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/home");
		List<CustomerNewReponse> cr = customerService.findAllNewCustomers();
		mav.addObject("numberOfBuilding", buildingService.getTheNumberOfBuildings());
		mav.addObject("numberOfUser", userService.countTotalItems());
		mav.addObject("numberOfCustomersWaiting", customerService.countCustomers(TransactionStatus.CHUA_XU_LY.name()));
		mav.addObject("numberOfTransaction", transactionService.countTransactions());
		mav.addObject("customers", cr);
		return mav;
	}
}
