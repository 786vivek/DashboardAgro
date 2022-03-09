package com.agro.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agro.main.model.Pesticide;

public interface PesticideRepo extends JpaRepository<Pesticide,Integer>{

}
