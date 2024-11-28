package com.javaweb.builder;

import java.util.List;

public class BuildingSearchBuilder {
    private String name;
    private Long floorArea;
    private String district;
    private String ward;
    private String street;
    private Long numberOfBasement;
    private String direction;
    private Long level;
    private Long areaFrom;
    private Long areaTo;
    private Long rentPriceFrom;
    private Long rentPriceTo;
    private String managerName;
    private String managerPhone;
    private Long staffId;
    private List<String> typeCode;

    // Lấy dữ liệu từ hàm Build() để gán cho thuộc tính, tránh việc khởi tạo constructor nhiều tham s
    public BuildingSearchBuilder(Builder builder) {
        this.name = builder.name;
        this.floorArea = builder.floorArea;
        this.street = builder.street;
        this.ward = builder.ward;
        this.district = builder.district;
        this.numberOfBasement = builder.numberOfBasement;
        this.direction = builder.direction;
        this.level = builder.level;
        this.areaFrom = builder.areaFrom;
        this.areaTo = builder.areaTo;
        this.rentPriceFrom = builder.rentPriceFrom;
        this.rentPriceTo = builder.rentPriceTo;
        this.managerName = builder.managerName;
        this.managerPhone = builder.managerPhone;
        this.staffId = builder.staffId;
        this.typeCode = builder.typeCode;
    }

    public String getName() {
        return name;
    }

    public Long  getFloorArea() {
        return floorArea;
    }

    public String getStreet() {
        return street;
    }

    public String getWard() {
        return ward;
    }

    public String getDistrict() {
        return district;
    }

    public Long  getNumberOfBasement() {
        return numberOfBasement;
    }

    public String getDirection() {
        return direction;
    }

    public Long getLevel() {
        return level;
    }

    public Long  getAreaFrom() {
        return areaFrom;
    }

    public Long  getAreaTo() {
        return areaTo;
    }

    public Long  getRentPriceFrom() {
        return rentPriceFrom;
    }

    public Long  getRentPriceTo() {
        return rentPriceTo;
    }

    public String getManagerName() {
        return managerName;
    }

    public String getManagerPhone() {
        return managerPhone;
    }

    public Long  getStaffId() {
        return staffId;
    }

    public List<String> getTypeCode() {
        return typeCode;
    }

    // Hàm con để set dữ liệu
    public static class Builder {
        private String name;
        private Long floorArea;
        private String district;
        private String ward;
        private String street;
        private Long numberOfBasement;
        private String direction;
        private Long level;
        private Long areaFrom;
        private Long areaTo;
        private Long rentPriceFrom;
        private Long rentPriceTo;
        private String managerName;
        private String managerPhone;
        private Long staffId;
        private List<String> typeCode;


        public void setName(String name) {
            this.name = name;
        }

        public void setFloorArea(Long floorArea) {
            this.floorArea = floorArea;
        }

        public void setDistrict(String district) {
            this.district = district;
        }

        public void setWard(String ward) {
            this.ward = ward;
        }

        public void setStreet(String street) {
            this.street = street;
        }

        public void setNumberOfBasement(Long numberOfBasement) {
            this.numberOfBasement = numberOfBasement;
        }

        public void setDirection(String direction) {
            this.direction = direction;
        }

        public void setLevel(Long level) {
            this.level = level;
        }

        public void setAreaFrom(Long areaFrom) {
            this.areaFrom = areaFrom;
        }

        public void setAreaTo(Long areaTo) {
            this.areaTo = areaTo;
        }

        public void setRentPriceFrom(Long rentPriceFrom) {
            this.rentPriceFrom = rentPriceFrom;
        }

        public void setRentPriceTo(Long rentPriceTo) {
            this.rentPriceTo = rentPriceTo;
        }

        public void setManagerName(String managerName) {
            this.managerName = managerName;
        }

        public void setManagerPhone(String managerPhone) {
            this.managerPhone = managerPhone;
        }

        public void setStaffId(Long staffId) {
            this.staffId = staffId;
        }

        public void setTypeCode(List<String> typeCode) {
            this.typeCode = typeCode;
        }

        // Gọi hàm khởi tạo để gán dữ liệu set cho class cha
        public BuildingSearchBuilder build() {
            return new BuildingSearchBuilder(this);

        }

    }
}
