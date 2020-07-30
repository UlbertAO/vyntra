package com.vyntra.vyntrau.security;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.vyntra.vyntrau.model.Vyntrauser;

public interface AuthGroupRepo extends JpaRepository<AuthGroup, String> {
    List<AuthGroup> findByUsername(String username);
    
    @Query(value = "Select * From auth_user_group a Order by a.auth_group;",nativeQuery=true)
    List<AuthGroup> findAll();
    
    @Query(value = "SELECT * FROM auth_user_group a WHERE a.auth_group=\"ADMIN\";",nativeQuery = true )
	List<AuthGroup> findAdmins();
    
    @Query(value = "Select Count(*) From auth_user_group a Where a.auth_group=\"USER\";",nativeQuery=true)
    Long countUsers();
   
    @Query(value = "Select Count(*) From auth_user_group a Where a.auth_group=\"ADMIN\";",nativeQuery=true)
    Long countAdmins();
    
    @Modifying(clearAutomatically = true)
    @Transactional
    @Query(value="Update auth_user_group a Set a.auth_group=?1 Where a.username=?2",nativeQuery = true)
    void setRole(String role,String username);

}
