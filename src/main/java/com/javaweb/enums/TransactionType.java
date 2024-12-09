package com.javaweb.enums;

import java.util.HashMap;
import java.util.Map;

public enum TransactionType {
    CHUA_XU_LY ("Chưa xử lý!"),
    DANG_XU_LY ("Đang xử lý"),
    DA_XU_LY ("Đã xử lý!"),;

    private final String typeName;

    TransactionType(String typeName) {
        this.typeName = typeName;
    }

    public String getTypeName() {
        return typeName;
    }

    public static Map<String,String> type(){
        Map<String,String> listType = new HashMap<>();
        for(TransactionType item : TransactionType.values()){
            listType.put(item.toString() , item.typeName);
        }
        return listType;
    }
}
