package com.programmingjavaweb.service.impl;

import com.programmingjavaweb.constant.SystemConstant;
import com.programmingjavaweb.dto.MyUserDetails;
import com.programmingjavaweb.entity.RoleEntity;
import com.programmingjavaweb.entity.UserEntity;
import com.programmingjavaweb.repository.UserRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service(value = "userCustomService")
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, SystemConstant.ACTIVE);
        if(userEntity == null) {
            throw new UsernameNotFoundException("User not found");
        }

        List<GrantedAuthority> authorities = new ArrayList<>();
        for(RoleEntity item : userEntity.getRoles()) {
            authorities.add(new SimpleGrantedAuthority("ROLE_" + item.getCode()));
        }
        MyUserDetails myUserDetails = new MyUserDetails(userEntity.getUserName(), userEntity.getPassword(), authorities);
        BeanUtils.copyProperties(userEntity, myUserDetails);
        return myUserDetails;
    }
}
