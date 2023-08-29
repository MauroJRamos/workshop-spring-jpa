package com.spring.ordempedido.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.ordempedido.entities.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long>{

}
