package com.programmingjavaweb.service.impl;

import com.programmingjavaweb.converter.BuildingConverter;
import com.programmingjavaweb.dto.BuildingDTO;
import com.programmingjavaweb.entity.BuildingEntity;
import com.programmingjavaweb.repository.BuildingRepository;
import com.programmingjavaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BuildingServiceImpl implements BuildingService {

    @Autowired
    private BuildingRepository buildingRepository;

    @Autowired
    private BuildingConverter buildingConverter;

    @Override
    public List<BuildingDTO> findAll() {
        List<BuildingEntity> buildings = buildingRepository.findAll();
        return buildings.stream().map(item -> buildingConverter.convertToDTO(item)).collect(Collectors.toList());
    }

    @Override
    public BuildingDTO save(Long id, BuildingDTO buildingDTO) {
        if(id != null) {
            return  null;
        } else {
            BuildingEntity entity = buildingConverter.convertToEntity(buildingDTO);
            return buildingConverter.convertToDTO(buildingRepository.save(entity));
        }
    }
}
