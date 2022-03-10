package com.agro.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.agro.main.model.Order;



@Repository
public interface OrderRepo extends JpaRepository<Order, Integer>{

	
	
	
	
	
	
}
