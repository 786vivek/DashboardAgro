package com.agro.main.serviceImpl;

import java.util.Objects;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.agro.main.model.Admin;
import com.agro.main.repository.AdminRepo;
import com.agro.main.service.AdminService;
import com.agro.main.vo.AdminVo;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminRepo adminRepo;

	@Override
	public String checkCredentials(AdminVo adminVo) {

		Admin admin = new Admin();
		try {

			BeanUtils.copyProperties(adminVo, admin);

			System.out.println(admin.toString());

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		System.out.println("adminvo=>" + adminVo.getType());

		try {

			admin = adminRepo.findByEmailAndPassword(admin.getEmail(), admin.getPassword());
		//	if(admin.getLoginvalue()=="0" || ("0").equalsIgnoreCase(admin.getLoginvalue())) {
		//	BeanUtils.copyProperties(admin, adminVo);
			adminVo.setId(admin.getId());
			System.out.println("type from db====>" + admin.type);
admin.setLoginvalue("1");
			if ((adminVo.getType() == admin.getType() || adminVo.getType().equalsIgnoreCase(admin.getType())) && admin.getIsActive().equalsIgnoreCase("1") ){

			adminRepo.save(admin);
adminVo.setUsername(admin.getUsername());
			return adminVo.getType();
			}
		//	}
		}
		catch (Exception ex) {
			ex.printStackTrace();
			System.out.println(ex.getMessage());
		}


		return "error";

	}

	@Override
	public String saveupdate(AdminVo adminVo) {
		// TODO Auto-generated method stub`
		Admin admin = new Admin();

		System.out.println("admin  values");

		Admin data = adminRepo.findByEmail(adminVo.getEmail());

		if (Objects.isNull(data)) {
			System.out.println("trying to save data");
			BeanUtils.copyProperties(adminVo, admin);

		} else {

			System.out.println("data updated");

			BeanUtils.copyProperties(data, admin);
			if (adminVo.getType()!=null) {

				admin.setType(adminVo.getType());
			}
			if (adminVo.getIsActive() != "" && adminVo.getIsActive() !=null) {

				admin.setIsActive("0");

			}
			if (adminVo.getApproved() != "" && adminVo.getApproved() !=null) {

				admin.setApproved("1");

			}

		}

		adminRepo.save(admin);

		return "";
	}

}
