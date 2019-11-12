package com.programmingjavaweb.service.impl;

import com.programmingjavaweb.converter.UserConverter;
import com.programmingjavaweb.dto.UserDTO;
import com.programmingjavaweb.entity.UserEntity;
import com.programmingjavaweb.repository.UserRepository;
import com.programmingjavaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserConverter userConverter;

    @Override
    public UserDTO findOneByUserName(String userName) {
        UserEntity userEntity = userRepository.findOneByUserName(userName);
        return userConverter.convertToDTO(userEntity);
    }
}
