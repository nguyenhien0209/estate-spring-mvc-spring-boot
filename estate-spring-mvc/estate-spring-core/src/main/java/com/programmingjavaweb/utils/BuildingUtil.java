package com.programmingjavaweb.utils;

import com.programmingjavaweb.enums.BuildingType;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Stream;

public class BuildingUtil {

    public static Map<String, String> getBuildingType() {
        Map<String, String> results = new HashMap<>();
        Stream.of(BuildingType.values()).forEach(type -> {
            results.put(type.name(), type.getValue());
        });
        return results;
    }
}
