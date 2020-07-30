package com.vyntra.vyntrau.service;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.vyntra.vyntrau.exception.EmailAlreadyExist;
import com.vyntra.vyntrau.exception.PhoneNumberAlreadyUsed;
import com.vyntra.vyntrau.exception.UsernameAlreadyExist;
import com.vyntra.vyntrau.model.Products;
import com.vyntra.vyntrau.model.Vyntrauser;
import com.vyntra.vyntrau.repository.ProductsRepo;
import com.vyntra.vyntrau.repository.VyntraRepo;
import com.vyntra.vyntrau.security.AuthGroup;
import com.vyntra.vyntrau.security.AuthGroupRepo;

@Service
public class AdminService {

	

	@Autowired
	VyntraRepo vyntraRepo;
	@Autowired
	ProductsRepo productsRepo;
	@Autowired
	AuthGroupRepo authGroupRepo;
	
	public void addProduct(Products product) {
		productsRepo.save(product);
		return;
	}
	
	public void deleteProduct(Products product) {
		productsRepo.deleteById(product.getPid());
		return;
	}
	
	public Products editProduct(Products product) throws Exception {
		
		//Products pro = productsRepo.getOne(product.getPid());
		Products pro = productsRepo.findById(product.getPid()).orElseThrow(() ->
		new EmptyResultDataAccessException("NO SUCH PRODUCT ID FOUND",1));
		
		return pro;
	}
	
	public Long totalNoOfProducts() {
		Long totalNoOfProducts = productsRepo.count();
		return totalNoOfProducts;
	}
	

	public Long totalNoOfUsers() {
		Long totalNoOfUsers = authGroupRepo.countUsers();
		return totalNoOfUsers;
	}
	
	public Long totalNoOfAdmins() {
		Long totalNoOfAdmins = authGroupRepo.countAdmins();
		return totalNoOfAdmins;
	}
	
	
	public HashMap<String, Object> listProducts() {
		List<Products> product = productsRepo.findAll();
		
		HashMap<String, Object> params =  new HashMap<String, Object>();
		params.put("products", product);

		return params;
	}


	public HashMap<String, Object> listAdmins() {
		List<AuthGroup> authGroups = authGroupRepo.findAdmins();
		
		HashMap<String, Object> params =  new HashMap<String, Object>();
		params.put("users", authGroups);

		return params;
	}
	
	public HashMap<String, Object> listUsers() {
		List<Vyntrauser> vyntrauser = vyntraRepo.findUsers();
		
		HashMap<String, Object> params =  new HashMap<String, Object>();
		params.put("users", vyntrauser);

		return params;
	}
	
	public HashMap<String, Object> listAuth() {
		List<AuthGroup> authGroups = authGroupRepo.findAll();
		
		HashMap<String, Object> params =  new HashMap<String, Object>();
		params.put("users", authGroups);

		return params;
	}
		

	public void deleteUser(Vyntrauser user) {
		
		authGroupRepo.deleteById(vyntraRepo.findUsernamebyId(user.getUid()));
		vyntraRepo.deleteById(user.getUid());
		return;
	}

public Vyntrauser editUser(Vyntrauser user) throws Exception {
		
		Vyntrauser u = vyntraRepo.findById(user.getUid()).orElseThrow(() ->
		new EmptyResultDataAccessException("NO SUCH USER ID FOUND",1));
		
		return u;
	}
	

public void setAuth( AuthGroup authGroup) throws Exception {
	authGroupRepo.setRole(authGroup.getAuthgroup(), authGroup.getUsername());
	return;
}

}
