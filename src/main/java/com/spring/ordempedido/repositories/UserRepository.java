package com.spring.ordempedido.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.ordempedido.entities.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
