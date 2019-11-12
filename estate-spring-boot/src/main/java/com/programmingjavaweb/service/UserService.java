package com.programmingjavaweb.service;

import com.programmingjavaweb.dto.UserDTO;

public interface UserService {
    UserDTO findOneByUserName(String userName);
}
