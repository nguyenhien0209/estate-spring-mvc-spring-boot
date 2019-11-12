package com.programmingjavaweb.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.programmingjavaweb.dto.BuildingDTO;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class BuildingServiceImpl {
    @Autowired
    private HttpServletRequest request;

    ObjectMapper mapper = new ObjectMapper();

    public List<BuildingDTO> findAll() {
        return null;
    }
}
