package com.agro.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.agro.main.model.Feedback;

@Repository
public interface FeedbackRepo extends JpaRepository<Feedback, Integer>
{

}
