package com.programmingjavaweb.converter;

import com.programmingjavaweb.dto.UserDTO;
import com.programmingjavaweb.entity.UserEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserConverter {

    @Autowired
    private ModelMapper modelMapper;

    public UserDTO convertToDTO(UserEntity userEntity) {
        UserDTO userDTO = modelMapper.map(userEntity, UserDTO.class);
        return userDTO;
    }

    public UserEntity convertToEntity(UserDTO userDTO) {
        UserEntity userEntity = modelMapper.map( userDTO, UserEntity.class);
        return userEntity;
    }
}
