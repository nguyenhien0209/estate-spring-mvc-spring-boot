package com.programmingjavaweb.repository;


import com.programmingjavaweb.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

//Repository tuong duong voi Dao
public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findOneByUserName(String userName);
    UserEntity findOneByUserNameAndStatus(String userName, int status);
}
