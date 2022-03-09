package com.agro.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "history")
public class History {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;
	
	@Column(name = "productname")
//	@NotNull
	public String productname;
	
	@Column(name = "amount")
//	@NotNull
	public String amount;
	
	@Column(name = "buyerid")
//	@NotNull
	public String buyerId;
	
	
	@Column(name = "quantity")
//	@NotNull
	public String quantity;

	
	@Column(name = "buyingdate")
//	@NotNull
	public String date;


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getProductname() {
		return productname;
	}


	public void setProductname(String productname) {
		this.productname = productname;
	}


	public String getAmount() {
		return amount;
	}


	public void setAmount(String amount) {
		this.amount = amount;
	}


	public String getBuyerId() {
		return buyerId;
	}


	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}


	public String getQuantity() {
		return quantity;
	}


	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}


	@Override
	public String toString() {
		return "History [id=" + id + ", productname=" + productname + ", amount=" + amount + ", buyerId=" + buyerId
				+ ", quantity=" + quantity + ", date=" + date + "]";
	}






	
}
