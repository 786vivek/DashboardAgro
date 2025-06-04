package com.agro.main.controller;

import java.time.Instant;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class Response {

	private int responseCode;
	private String responseDesc;
	private Instant responseTime;
	private Object responseObject;
	//private Object responseObject1;
	
	public String getResponseDesc() {
		return responseDesc;
	}
	public Response setResponseDesc(String responseDesc) {
		this.responseDesc = responseDesc;
		return this;
	}
	public int getResponseCode() {
		return responseCode;
	}
	public Response setResponseCode(int responseCode) {
		this.responseCode = responseCode;
		return this;
	}
	public Object getResponseObject() {
		return responseObject;
	}
	public Response setResponseObject(Object responseObject) {
		this.responseObject = responseObject;
		return this;
	}
	public Instant getResponseTime() {
		return responseTime;
	}
	public void setResponseTime(Instant responseTime) {
		this.responseTime = responseTime;
	}
	/*
	 * public Object getResponseObject1() { return responseObject1; } public void
	 * setResponseObject1(Object responseObject1) { this.responseObject1 =
	 * responseObject1; }
	 */
		
}
