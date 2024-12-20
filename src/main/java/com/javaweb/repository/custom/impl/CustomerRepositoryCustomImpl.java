package com.javaweb.repository.custom.impl;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.CustomerEntity;
import com.javaweb.model.request.CustomerSearchRequest;
import com.javaweb.repository.custom.CustomerRepositoryCustom;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.Field;
import java.util.List;

@Repository
@Primary
public class CustomerRepositoryCustomImpl implements CustomerRepositoryCustom {
    @PersistenceContext //được sử dụng để tiêm (inject) một đối tượng EntityManager vào trong một class
    private EntityManager entityManager;

    // Kiểm tra điều kiện để join các bảng cần thiết
    public void joinTable(CustomerSearchRequest customerSearchRequest, StringBuilder sql) {
        // kiểm tra staffid
        Long staffId = customerSearchRequest.getStaffId();
        if (staffId != null) {
            sql.append(" INNER JOIN assignmentcustomer ac ON c.id = ac.customerid");
        }

    }

    // Hàm xử lý các trường hợp đơn giản like and =, các trường thuộc table chính
    public void queryNomal(CustomerSearchRequest customerSearchRequest, StringBuilder where) {
        //Java Reflection
        try {
            Field[] fields = CustomerSearchRequest.class.getDeclaredFields();
            for (Field item : fields) {
                item.setAccessible(true);
                String fieldName = item.getName();
                Object value = item.get(customerSearchRequest);
                if (!fieldName.equals("staffId")) {
                    // Kiểm tra chia truy vấn theo số và xâu
                    if (value != null && value != "") {
                        if (item.getType().getName().equals("java.lang.Long") || item.getType().getName().equals("java.lang.Integer")) {
                            where.append(" AND c." + fieldName + " = " + value);
                        } else if (item.getType().getName().equals("java.lang.String")) {
                            where.append(" AND c." + fieldName + " LIKE '%" + value + "%' ");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Hàm xử lý các trường hợp đặc biệt và các out table
    public void querySpecial(CustomerSearchRequest customerSearchRequest, StringBuilder where) {
        // truy vấn với staffid
        Long staffId = customerSearchRequest.getStaffId();
        if (staffId != null) {
            where.append(" AND ac.staffid = " + staffId);
        }
    }


    @Override
    public List<CustomerEntity> findAll(CustomerSearchRequest customerSearchRequest) {
        // Xử lý select
        StringBuilder sql = new StringBuilder("SELECT c.* FROM customer c");
        // Xử lý JOIN
        joinTable(customerSearchRequest, sql);
        // Xử lý WHERE
        StringBuilder where = new StringBuilder(" WHERE 1=1 ");
        queryNomal(customerSearchRequest, where);
        querySpecial(customerSearchRequest, where);
        where.append(" GROUP BY c.id");

        sql.append(where);
        Query query = entityManager.createNativeQuery(sql.toString(), CustomerEntity.class);

        return query.getResultList();
    }
}
