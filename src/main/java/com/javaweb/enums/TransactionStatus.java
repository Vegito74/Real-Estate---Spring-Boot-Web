package com.javaweb.enums;

import java.util.HashMap;
import java.util.Map;

public enum TransactionStatus {
    CHUA_XU_LY ("Chưa xử lý!"),
    DANG_XU_LY ("Đang xử lý!"),
    DA_XU_LY ("Đã xử lý!"),;

    private final String statusName;

    TransactionStatus(String statusName) {
        this.statusName = statusName;
    }

    public String getStatusName() {
        return statusName;
    }

    public static Map<String,String> type(){
        Map<String,String> listStatus = new HashMap<>();
        for(TransactionStatus item : TransactionStatus.values()){
            listStatus.put(item.toString() , item.statusName);
        }
        return listStatus;
    }
}
