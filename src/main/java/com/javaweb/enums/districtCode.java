package com.javaweb.enums;

import java.util.HashMap;
import java.util.Map;

public enum  districtCode {
    QUAN_1 ("Quận Ba Đình"),
    QUAN_2 ("Quận Cầu Giấy"),
    QUAN_3 ("Quận Hai Bà Trưng"),
    QUAN_4 ("Quận Bắc Từ Liêm"),
    QUAN_5 ("Quận Nam Từ Liêm"),
    QUAN_6 ("Quận Đống Đa"),
    QUAN_7 ("Quận Hoàn Kiếm"),
    QUAN_8 ("Quận Thanh Xuân"),
    QUAN_9 ("Quận Hoàng Mai"),
    QUAN_10 ("Quận Long Biên"),
    QUAN_11 ("Quận Hà Đông"),
    QUAN_12 ("Quận Tây Hồ"),
    ;

    private final String districtName;
    districtCode(String districtName) {
        this.districtName = districtName;
    }

    public String getDistrictName() {
        return districtName;
    }

    public static Map<String,String> type(){
        Map<String,String> listType = new HashMap<>();
        for(districtCode item : districtCode.values()){
            listType.put(item.toString() , item.districtName);
        }
        return listType;
    }
}
