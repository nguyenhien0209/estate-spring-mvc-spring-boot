package com.programmingjavaweb.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.programmingjavaweb.constant.SystemConstant;
import com.programmingjavaweb.dto.BuildingDTO;
import com.programmingjavaweb.utils.BuildingUtil;
import com.programmingjavaweb.utils.HttpClientUtils;
import com.programmingjavaweb.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BuildingController {

    @Autowired
    private HttpClientUtils httpClientUtils;

    ObjectMapper objectMapper = new ObjectMapper();

    @GetMapping("/admin/building/list")
    public ModelAndView showBuilding(@ModelAttribute(SystemConstant.MODEL) BuildingDTO model) {
        ModelAndView modelAndView = new ModelAndView("admin/building/list");// same RequestDispatcher
        modelAndView.addObject(SystemConstant.BUILDING_TYPE, BuildingUtil.getBuildingType());
        String url = "http://localhost:8081/api/building";
        Map<String, String> headerParams = new HashMap<>();
        headerParams.put("Authorization", "Bearer " + SecurityUtils.getPrincipal().getToken());
        String json = httpClientUtils.httpGet(url, headerParams);
        try {
            List<BuildingDTO> buildings = Arrays.asList(objectMapper.readValue(json, BuildingDTO[].class));
            model.setListResult(buildings);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }

        modelAndView.addObject(SystemConstant.MODEL, model);
        return modelAndView;
    }

    @GetMapping("/admin/building/edit")
    public ModelAndView editBuilding(@ModelAttribute(SystemConstant.MODEL) BuildingDTO model,
                                     @RequestParam(value = "id", required = false) Long id) {
        ModelAndView modelAndView = new ModelAndView("admin/building/edit");// same RequestDispatcher
        if (id != null) {
            //find data building by id
        }
        return modelAndView;
    }
}
