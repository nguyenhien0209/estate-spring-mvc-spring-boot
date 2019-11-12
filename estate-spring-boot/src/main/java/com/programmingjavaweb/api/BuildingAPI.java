package com.programmingjavaweb.api;

import com.programmingjavaweb.dto.BuildingDTO;
import com.programmingjavaweb.dto.UserDTO;
import com.programmingjavaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
public class BuildingAPI {

    @Autowired
    private BuildingService buildingService;

    @PostMapping("/api/building")
    public ResponseEntity<BuildingDTO> createBuilding(@RequestBody BuildingDTO buildingDTO) {
        return ResponseEntity.ok(buildingService.save(buildingDTO.getId(), buildingDTO));
    }

    @GetMapping("/api/building")
    public ResponseEntity<List<BuildingDTO>> findAll() {
        return ResponseEntity.ok(buildingService.findAll());
    }
}
