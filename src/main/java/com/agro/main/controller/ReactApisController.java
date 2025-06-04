package com.agro.main.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin(origins = "http://localhost:8081")
public class ReactApisController {

	
	 @GetMapping("/reactget")
	    public Response signup(@RequestParam String email, @RequestParam String password) {
	
		System.out.println(email);
		 return new Response().setResponseCode(200).setResponseDesc(password+email).setResponseObject(password);


	    }

	 @PostMapping("/reactnativepost")
	 public Response signuppost(@RequestBody RequestDTO request) {
	     System.out.println(request.getEmail());
	     return new Response()
	         .setResponseCode(200)
	         .setResponseDesc(request.getPassword() + request.getEmail())
	         .setResponseObject(request.getPassword());
	 }

}
