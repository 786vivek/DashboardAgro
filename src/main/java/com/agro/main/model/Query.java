package com.agro.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "query")
public class Query {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;

	@Column(name = "productid")
//	@NotNull
	public String productid;

	@Column(name = "productname")
//	@NotNull
	public String productname;

	
	
	public String getProductname() {
		return productname;
	}


	public void setProductname(String productname) {
		this.productname = productname;
	}


	@Column(name = "query")
//	@NotNull
	public String query;
	
	@Column(name = "answer")
//	@NotNull
	public String answer;
	
	
	@Column(name = "expertid")
//	@NotNull
	public String expertid;

	@Column(name = "queryuserid")
//	@NotNull
	public String queryuserid;

	public String getQueryuserid() {
		return queryuserid;
	}


	public void setQueryuserid(String queryuserid) {
		this.queryuserid = queryuserid;
	}


	@Override
	public String toString() {
		return "Query [id=" + id + ", productid=" + productid + ", productname=" + productname + ", query=" + query
				+ ", answer=" + answer + ", expertid=" + expertid + ", queryuserid=" + queryuserid + "]";
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getProductid() {
		return productid;
	}


	public void setProductid(String productid) {
		this.productid = productid;
	}


	public String getQuery() {
		return query;
	}


	public void setQuery(String query) {
		this.query = query;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getExpertid() {
		return expertid;
	}


	public void setExpertid(String expertid) {
		this.expertid = expertid;
	}
		
}
