package com.spring.ordempedido.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.ordempedido.entities.Category;

public interface CategoryRepository extends JpaRepository<Category, Long>{

}
