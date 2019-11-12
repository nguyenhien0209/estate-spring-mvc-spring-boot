package com.programmingjavaweb.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.programmingjavaweb.dto.AuthToken;
import com.programmingjavaweb.dto.MyUserDetails;
import com.programmingjavaweb.dto.RoleDTO;
import com.programmingjavaweb.dto.UserDTO;
import com.programmingjavaweb.utils.HttpClientUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpClientUtils httpClientUtils;

    ObjectMapper mapper = new ObjectMapper();

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        String password = request.getParameter("j_password");
        String token = getToken(userName, password);
        DefaultHttpClient httpClient = new DefaultHttpClient();
        UserDTO userDTO = findByUserName(token, userName);
        try {
            HttpGet getRequest = new HttpGet("http://localhost:8081/api/user?username=" + userName);
            HttpResponse response = httpClient.execute(getRequest);
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 200 && statusCode < 300) {
                HttpEntity httpEntity = response.getEntity();
                String apiOutput = EntityUtils.toString(httpEntity);
                userDTO = mapper.readValue(apiOutput, UserDTO.class);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (userDTO == null) {
            throw new UsernameNotFoundException("User not found");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (RoleDTO item : userDTO.getRoles()) {
            authorities.add(new SimpleGrantedAuthority(item.getCode()));
        }
        MyUserDetails myUserDetails = new MyUserDetails(userDTO.getUserName(), userDTO.getPassword(), authorities);
        myUserDetails.setToken(token);
        BeanUtils.copyProperties(userDTO, myUserDetails);
        return myUserDetails;
    }

    private UserDTO findByUserName(String token, String userName) {
        if (token != null) {
            String url = "http://localhost:8081/api/user?username=" + userName;
            Map<String, String> headerParams = new HashMap<>();
            headerParams.put("Authorization", "Bearer " + token);
            String json =  httpClientUtils.httpGet(url, headerParams);
            try {
                return mapper.readValue(json, UserDTO.class);
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private String getToken(String userName, String password) {
        String url = "http://localhost:8081/authentication";
        Map<String, String> headerParams = new HashMap<>();
        headerParams.put("Content-Type", "application/json");
        UserDTO userDTO = new UserDTO();
        userDTO.setUserName(userName);
        userDTO.setPassword(password);
        try {
            String jsonValue = mapper.writeValueAsString(userDTO);
            String json =  httpClientUtils.httpPost(url, headerParams, jsonValue);
            return mapper.readValue(json, AuthToken.class).getToken();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
