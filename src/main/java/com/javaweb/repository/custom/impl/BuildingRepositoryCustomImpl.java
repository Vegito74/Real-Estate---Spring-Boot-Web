package com.javaweb.repository.custom.impl;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.repository.custom.BuildingRepositoryCustom;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Primary
@Repository
public  class BuildingRepositoryCustomImpl implements BuildingRepositoryCustom {
        @PersistenceContext //được sử dụng để tiêm (inject) một đối tượng EntityManager vào trong một class
        private EntityManager entityManager;
        // Kiểm tra điều kiện để join các bảng cần thiết
        public  void joinTable(BuildingSearchRequest buildingSearchRequest, StringBuilder sql) {
            // kiểm tra staffid
            Long staffId = buildingSearchRequest.getStaffId();
            if (staffId != null) {
                sql.append(" INNER JOIN assignmentbuilding ab ON b.id = ab.buildingid");
            }

        }

        // Hàm xử lý các trường hợp đơn giản like and =, các trường thuộc table chính
        public  void queryNomal(BuildingSearchRequest buildingSearchRequest, StringBuilder where) {
            //Java Reflection
            try {
                Field[] fields = BuildingSearchRequest.class.getDeclaredFields();
                for(Field item : fields) {
                    item.setAccessible(true);
                    String fieldName = item.getName();
                    if (!fieldName.equals("staffId") && !fieldName.equals("typeCode") && !fieldName.startsWith("area")
                            && !fieldName.startsWith("rentPrice")) { // startWith: kiểm tra tiền tố bắt đầu trong chuỗi. Trả về boolean
                        Object value = item.get(buildingSearchRequest);
                        // Kiểm tra chia truy vấn theo số và xâu
                        if (value != null && value != "") {
                            if (item.getType().getName().equals("java.lang.Long") || item.getType().getName().equals("java.lang.Integer")) {
                                where.append(" AND b." + fieldName + " = " + value);
                            } else if(item.getType().getName().equals("java.lang.String")){
                                where.append(" AND b." + fieldName + " LIKE '%" + value + "%' ");
                            }
                        }

                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        // Hàm xử lý các trường hợp đặc biệt và các out table
        public  void querySpecial(BuildingSearchRequest buildingSearchRequest, StringBuilder where) {
            // truy vấn với staffid
            Long staffId = buildingSearchRequest.getStaffId();
            if (staffId != null) {
                where.append(" AND ab.staffid = " + staffId);
            }
            // truy vấn với rentArea
            Long rentAreaTo = buildingSearchRequest.getAreaTo();
            Long rentAreaFrom = buildingSearchRequest.getAreaFrom();
            if (rentAreaTo!=null || rentAreaFrom!=null) {
                // Dùng EXITS thay cho câu lệnh JOIN
                where.append(" AND EXISTS (SELECT b.* FROM rentarea ra WHERE b.id = ra.buildingid ");

                if (rentAreaFrom!=null ) {
                    where.append(" AND ra.value >= " + rentAreaFrom);
                }
                if (rentAreaTo!=null ) {
                    where.append(" AND ra.value <= " + rentAreaTo);
                }
                where.append(") "); //append thêm ")" khi dùng exits
            }
            // truy vấn với rentPrice
            Long rentPriceTo = buildingSearchRequest.getRentPriceTo();
            Long rentPriceFrom = buildingSearchRequest.getRentPriceFrom();
            if (rentPriceTo != null || rentPriceFrom != null ) {
                if (rentPriceFrom != null) {
                    where.append(" AND b.rentprice >= " + rentAreaFrom);
                }
                if (rentPriceTo != null) {
                    where.append(" AND b.rentprice <= " + rentPriceTo);
                }
            }

            List<String> typeCode = buildingSearchRequest.getTypeCode();
            // truy vấn với typeCode theo JAVA 8 dùng stream
            if (typeCode != null && typeCode.size() != 0) {
                where.append(" AND(");
                String sql = typeCode.stream().map(it -> "rt.code LIKE '%" + it +"%'").collect(Collectors.joining(" OR "));
                where.append(sql);
                where.append(") ");
            }
        }


        @Override
        public List<BuildingEntity> findAll(BuildingSearchRequest buildingSearchRequest) {
            // Xử lý select
            StringBuilder sql = new StringBuilder("SELECT b.* FROM building b");

            // Xử lý JOIN
            joinTable(buildingSearchRequest, sql);

            // Xử lý WHERE
            StringBuilder where = new StringBuilder(" WHERE 1=1 ");
            queryNomal(buildingSearchRequest, where);
            querySpecial(buildingSearchRequest, where);
            where.append(" GROUP BY b.id");

            sql.append(where);
            Query query = entityManager.createNativeQuery(sql.toString(),BuildingEntity.class);

            return query.getResultList();
        }

    @Override
    public List<BuildingEntity> findTop5Buildings() {
        StringBuilder sql = new StringBuilder("SELECT b.* ,SUM(r.value) AS total_rent_area " +
                "FROM building b " +
                "JOIN rentarea r ON b.id = r.buildingid " +
                "GROUP BY b.id " +
                "ORDER BY total_rent_area DESC " +
                "LIMIT 5;");
        Query query = entityManager.createNativeQuery(sql.toString(),BuildingEntity.class);

        return query.getResultList();
    }

}

