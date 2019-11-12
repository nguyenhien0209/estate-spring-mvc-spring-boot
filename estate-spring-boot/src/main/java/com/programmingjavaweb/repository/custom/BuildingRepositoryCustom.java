package com.programmingjavaweb.repository.custom;

import com.programmingjavaweb.entity.BuildingEntity;

import java.util.List;

public interface BuildingRepositoryCustom {
    List<BuildingEntity> findAll();
}
