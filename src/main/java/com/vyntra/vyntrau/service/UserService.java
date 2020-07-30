package com.vyntra.vyntrau.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.vyntra.vyntrau.exception.EmailAlreadyExist;
import com.vyntra.vyntrau.exception.PhoneNumberAlreadyUsed;
import com.vyntra.vyntrau.exception.UsernameAlreadyExist;
import com.vyntra.vyntrau.model.Vyntrauser;
import com.vyntra.vyntrau.repository.ProductsRepo;
import com.vyntra.vyntrau.repository.VyntraRepo;
import com.vyntra.vyntrau.security.AuthGroup;
import com.vyntra.vyntrau.security.AuthGroupRepo;

@Service
public class UserService {

	Logger log= LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	VyntraRepo vyntraRepo;
	@Autowired
	ProductsRepo productsRepo;
	@Autowired
	AuthGroupRepo authGroupRepo;
	
	public void addUser(Vyntrauser vyntraUser) throws UsernameAlreadyExist, EmailAlreadyExist, PhoneNumberAlreadyUsed {
		
		System.out.println(vyntraUser.getUid());
		if(vyntraUser.getUid()==null) {
		if(vyntraRepo.findByUsername(vyntraUser.getUsername())!=null)
			throw new UsernameAlreadyExist(vyntraUser.getUsername());
		
		if(vyntraRepo.findByEmail(vyntraUser.getEmail())!=null)
			throw new EmailAlreadyExist(vyntraUser.getEmail());
		
		if(vyntraRepo.findByPhone(vyntraUser.getPhone())!=null)
			throw new PhoneNumberAlreadyUsed(vyntraUser.getPhone());
		}
	
		System.out.println(vyntraUser.getUsername());
		vyntraRepo.save(vyntraUser);
		if(authGroupRepo.findByUsername(vyntraUser.getUsername())==null)
			throw new UsernameAlreadyExist(vyntraUser.getUsername());	
	     else
		{
			AuthGroup authGroup=new AuthGroup(vyntraUser.getUsername(),"USER");	
			authGroupRepo.save(authGroup);
			log.info(vyntraUser.getUsername()+" Successfully registered");
		}
	
		
	}
	

public Vyntrauser editUser(String username) throws Exception {
		
		Vyntrauser u = vyntraRepo.findByUsername(username);
		return u;
	}
	
}
