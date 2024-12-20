package com.javaweb.repository.custom;

import com.javaweb.entity.RoleEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepositoryCustom extends JpaRepository<RoleEntity, Long> {
    RoleEntity findByUserId(Long userId);
}
