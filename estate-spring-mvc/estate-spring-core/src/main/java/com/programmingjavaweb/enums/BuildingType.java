package com.programmingjavaweb.enums;

public enum BuildingType {
    NOI_THAT("Nội thất"),
    NGUYEN_CAN("Nguyên căn"),
    TANG_HAM("Tầng hầm");

    private String value;

    BuildingType(String value) {
        this.value = value;
    }

    public String getValue() {
        return this.value;
    }
}
