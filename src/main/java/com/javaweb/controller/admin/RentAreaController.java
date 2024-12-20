package com.javaweb.controller.admin;

import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.model.dto.RentAreaDTO;
import com.javaweb.service.BuildingService;
import com.javaweb.service.CustomerService;
import com.javaweb.service.RentAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value="rentAreaControllerOfAdmin")
public class RentAreaController {
    @Autowired
    private RentAreaService rentAreaService;

    @Autowired
    private CustomerService customerService;
    @Autowired
    private BuildingService buildingService;

    @RequestMapping(value = "/admin/rent-area-{id}", method = RequestMethod.GET)
    public ModelAndView listus(@PathVariable("id") Long id) {
        ModelAndView mav = new ModelAndView("admin/building/rent-area");
        List<RentAreaDTO> rentAreaDTOs = rentAreaService.getRentAreas(id);
        mav.addObject("rentAreaDTOs", rentAreaDTOs);
        List<CustomerDTO> customerDTOs = customerService.findAll();
        mav.addObject("customerDTOs", customerDTOs);
        mav.addObject("building", buildingService.getBuildingById(id));
        return mav;
    }

}
