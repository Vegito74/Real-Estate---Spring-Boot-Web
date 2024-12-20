package com.javaweb.enums;

import java.util.HashMap;
import java.util.Map;

public enum RentalStatus {
    AVAILABLE ("Còn trống"),
    RENTED ("Đã cho thuê"),
    ;

    private final String statusName;

    RentalStatus(String statusName) {
        this.statusName = statusName;
    }

    public String getTypeName() {
        return statusName;
    }

    public static Map<String,String> type(){
        Map<String,String> listType = new HashMap<>();
        for(RentalStatus item : RentalStatus.values()){
            listType.put(item.toString() , item.statusName);
        }
        return listType;
    }
}
