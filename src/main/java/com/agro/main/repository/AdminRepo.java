package com.agro.main.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.agro.main.model.Admin;



@Repository
public interface AdminRepo extends JpaRepository<Admin, Integer>
	{



//	Admin findByusernameAndpassword(String username, String password);

	Admin   findByEmail(String email);
	Admin   findByEmailAndIsActive(String email,String activestatus);

	Admin findByUsernameAndType(String username, String type);

	Admin findByEmailAndPassword(String email, String password);

	List<Admin> findByTypeNot(String admin);

	List<Admin> findByType(String type);
	List<Admin> findByTypeAndApproved(String type, String approved);

	//Admin findByUsernameAndType(String username,String type);

	
	
	
	}

