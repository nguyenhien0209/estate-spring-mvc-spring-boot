package com.programmingjavaweb.api;


import com.programmingjavaweb.dto.UserDTO;
import com.programmingjavaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
public class UserAPI {

    @Autowired
    private UserService userService;

    @GetMapping("/api/user")
    public ResponseEntity<UserDTO> findByUserName(@RequestParam("username") String userName) {
        return ResponseEntity.ok(userService.findOneByUserName(userName));
    }
}
