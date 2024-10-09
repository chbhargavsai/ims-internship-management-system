package com.example.demo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import com.example.demo.model.Internship;
import com.example.demo.repository.InternshipRepository;

@Service
public class InternshipManager {

    @Autowired
    private InternshipRepository internshipRepository;

    // Retrieve all internships
    public List<Internship> getAllInternships() {
        return internshipRepository.findAll();
    }

	public List<Internship> getInternshipsByDuration(int duration) {
		// TODO Auto-generated method stub
		return null;
	}

    // Add more methods as needed (e.g., save, delete, update internships)
}
