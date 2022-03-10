package com.agro.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.agro.main.model.Query;

@Repository
public interface QueryRepo  extends JpaRepository<Query, Integer>{

}
