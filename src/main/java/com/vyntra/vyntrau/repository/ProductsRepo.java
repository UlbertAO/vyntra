package com.vyntra.vyntrau.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vyntra.vyntrau.model.Products;

@Repository
public interface ProductsRepo extends JpaRepository<Products,Integer> {

}
