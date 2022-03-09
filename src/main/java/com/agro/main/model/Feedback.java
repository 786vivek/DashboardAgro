package com.agro.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "feedback")
public class Feedback {

	
	
	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;
	
	@Column(name = "productname")
	public String productname;
	
	@Column(name = "queries")
	public String queries;

	@Column(name = "feedbackid")
	public String feedbackid;
	
	
	
	public String getFeedbackid() {
		return feedbackid;
	}

	public void setFeedbackid(String feedbackid) {
		this.feedbackid = feedbackid;
	}

	@Column(name = "answer")
	public String answer;


	@Column(name = "expertid")
	public String expertid;
																																															
	
	@Column(name = "feeedback")
	public String feedback;

	

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getExpertid() {
		return expertid;
	}

	public void setExpertid(String expertid) {
		this.expertid = expertid;
	}

	@Override
	public String toString() {
		return "Feedback [id=" + id + ", productname=" + productname + ", queries=" + queries + ", feedbackid="
				+ feedbackid + ", answer=" + answer + ", expertid=" + expertid + ", feedback=" + feedback + "]";
	}


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
	
	
	
}
