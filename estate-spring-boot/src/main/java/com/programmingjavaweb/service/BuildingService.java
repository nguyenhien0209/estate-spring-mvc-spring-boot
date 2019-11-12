package com.programmingjavaweb.service;

import com.programmingjavaweb.dto.BuildingDTO;

import java.util.List;

public interface BuildingService {
    List<BuildingDTO> findAll();
    BuildingDTO save(Long id, BuildingDTO buildingDTO);
}
