package com.vyntra.vyntrau.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.vyntra.vyntrau.model.Vyntrauser;

@Repository
public interface VyntraRepo extends JpaRepository<Vyntrauser,Long> {
    Vyntrauser findByUsername(String username);
    Vyntrauser findByEmail(String email);
    Vyntrauser findByPhone(String phone);


    @Query(value = "SELECT * FROM vyntra_user_details u WHERE u.username in "
    		+ "(SELECT username FROM auth_user_group WHERE auth_group=\"USER\") ;",nativeQuery = true )
	List<Vyntrauser> findUsers();
    
    @Query(value="SELECT username FROM vyntra_user_details WHERE id = ?1",nativeQuery = true)
    String findUsernamebyId(Long id);
   

}
