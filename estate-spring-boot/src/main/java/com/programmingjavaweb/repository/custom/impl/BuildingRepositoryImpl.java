package com.programmingjavaweb.repository.custom.impl;

import com.programmingjavaweb.entity.BuildingEntity;
import com.programmingjavaweb.repository.custom.BuildingRepositoryCustom;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class BuildingRepositoryImpl implements BuildingRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;
    //Su dung doi tuong EntityManager de custom cau lenh SQL

    @Override
    public List<BuildingEntity> findAll() {
        StringBuilder sql = new StringBuilder("select * from estatespring.building AS b");
        Query query = entityManager.createNativeQuery(sql.toString(), BuildingEntity.class);
        return query.getResultList();
    }
}
