package com.agro.main.vo;

public class HistoryVo {

	
	public int id;
	
	public String queries;
	
	
	public String answer;
	
	
	public String buyerId;
	
	
	public String feedback;
	
	
	public String productName;

	
	
	
	
	
	
	


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQueries() {
		return queries;
	}

	public void setQueries(String queries) {
		this.queries = queries;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Override
	public String toString() {
		return "HistoryVo [id=" + id + ", queries=" + queries + ", answer=" + answer + ", buyerId=" + buyerId
				+ ", feedback=" + feedback + ", productName=" + productName + "]";
	}




}
