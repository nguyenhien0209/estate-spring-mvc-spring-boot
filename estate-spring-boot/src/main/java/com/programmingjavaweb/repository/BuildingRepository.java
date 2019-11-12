package com.programmingjavaweb.repository;

import com.programmingjavaweb.entity.BuildingEntity;
import com.programmingjavaweb.repository.custom.BuildingRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BuildingRepository extends JpaRepository<BuildingEntity, Long>, BuildingRepositoryCustom {

}
