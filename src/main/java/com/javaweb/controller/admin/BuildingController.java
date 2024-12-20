package com.javaweb.controller.admin;



import com.javaweb.enums.buildingType;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.BuildingService;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {

    @Autowired
    private IUserService userService;

    @Autowired
    private BuildingService buildingService;

    @RequestMapping(value="/admin/building-view", method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request) {
        ModelAndView view = new ModelAndView("admin/building/list");
        view.addObject("modelSearch", buildingSearchRequest); // Gửi thông tin tìm kiếm về client để hiển thị thông tin đã tìm kiếm
        List<BuildingSearchResponse> buildingSearchResponses = buildingService.findAll(buildingSearchRequest);
        view.addObject("buildingSearchResponses", buildingSearchResponses);
        view.addObject("listStaff", userService.getStaffs()); // danh sách nhân viên
        view.addObject("districts", districtCode.type());
        view.addObject("types", buildingType.type());
        return view;
    }

    // Thêm mới Building
    @RequestMapping(value="/admin/building-edit", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO,HttpServletRequest request) {
        ModelAndView view = new ModelAndView("admin/building/edit");
        view.addObject("districts", districtCode.type());
        view.addObject("types", buildingType.type());
        return view;
    }

    //Sửa building. nhận id của building
    @RequestMapping(value="/admin/building-edit-{id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long Id, HttpServletRequest request) {
        ModelAndView view = new ModelAndView("admin/building/edit");
        //xuống db tìm building theo id
        BuildingDTO buildingDTO =buildingService.getBuildingById(Id);
        view.addObject("buildingEdit", buildingDTO);
        view.addObject("districts", districtCode.type());
        view.addObject("types", buildingType.type());
        return view;
    }

}
