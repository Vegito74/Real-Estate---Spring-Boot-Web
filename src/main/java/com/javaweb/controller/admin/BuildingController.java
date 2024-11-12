package com.javaweb.controller.admin;



import com.javaweb.enums.buildingType;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import com.javaweb.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {

    @Autowired
    private IUserService userService;


    @RequestMapping(value="/admin/building-view", method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request) {
        ModelAndView view = new ModelAndView("admin/building/list");
        view.addObject("modelSearch", buildingSearchRequest);

        List<BuildingSearchResponse> buildingSearchResponseList = new ArrayList<>();
        BuildingSearchResponse buildingSearchResponse1 = new BuildingSearchResponse();
        buildingSearchResponse1.setName("Nguyễn Văn Trọng");
        buildingSearchResponse1.setNumberOfBasement(16L);
        BuildingSearchResponse buildingSearchResponse2 = new BuildingSearchResponse();
        buildingSearchResponse2.setName("Nguyễn Tiến Trọng");
        buildingSearchResponse2.setNumberOfBasement(12L);

        buildingSearchResponseList.add(buildingSearchResponse1);
        buildingSearchResponseList.add(buildingSearchResponse2);
        view.addObject("listStaff", userService.getStaffs());
        view.addObject("buildingSearchResponseList", buildingSearchResponseList);
        view.addObject("districts", districtCode.type());
        view.addObject("types", buildingType.type());
        return view;
    }


    @RequestMapping(value="/admin/building-edit", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO,HttpServletRequest request) {
        ModelAndView view = new ModelAndView("admin/building/edit");
        view.addObject("districts", districtCode.type());
        view.addObject("types", buildingType.type());
        return view;
    }


    @RequestMapping(value="/admin/building-edit-{id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long id, HttpServletRequest request) {
        ModelAndView view = new ModelAndView("admin/building/edit");
        //xuống db tìm building theo id
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setName("Trọng");
        buildingDTO.setId(id);
        view.addObject("buildingDTO", buildingDTO);
        view.addObject("districts", districtCode.type());
        view.addObject("types", buildingType.type());
        return view;
    }

}
