package com.spring.ordempedido.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.ordempedido.entities.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

}
