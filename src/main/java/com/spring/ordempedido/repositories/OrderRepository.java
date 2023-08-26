package com.spring.ordempedido.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.ordempedido.entities.Order;

public interface OrderRepository extends JpaRepository<Order, Long>{

}
