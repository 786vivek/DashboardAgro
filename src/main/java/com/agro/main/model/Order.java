package com.agro.main.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "orderhistory")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;

	@Column(name = "productid")
//	@NotNull
	public String productid;

	@Column(name = "amount")
//	@NotNull
	public String amount;

	@Column(name = "buyerid")
//	@NotNull
	public String buyerId;

	@Column(name = "quantity")
//	@NotNull
	public String quantity;

	@Column(name = "orderdate")
//	@NotNull
	@CreationTimestamp
	public LocalDateTime orderdate;

	public void setId(int id) {
		this.id = id;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
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

	public LocalDateTime getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(LocalDateTime orderdate) {
		this.orderdate = orderdate;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", productid=" + productid + ", amount=" + amount + ", buyerId=" + buyerId
				+ ", quantity=" + quantity + ", orderdate=" + orderdate + "]";
	}

}
