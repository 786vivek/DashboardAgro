package com.agro.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pesticide")
public class Pesticide {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;
	
	
	@Column(name = "product_name")
//	@NotNull
	public String name;
	
	@Column(name = "quantity")
//	@NotNull
	public String quantity;

	
	@Column(name = "price")
//	@NotNull
	public String price;
	
	@Column(name = "addby")
//	@NotNull
	public int addby;
	
	
	
	
	public int getAddby() {
		return addby;
	}

	public void setAddby(int addby) {
		this.addby = addby;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Pesticide [id=" + id + ", name=" + name + ", quantity=" + quantity + ", price=" + price + ", addby="
				+ addby + "]";
	}
	
	
	
	
	
	
	
	
}
