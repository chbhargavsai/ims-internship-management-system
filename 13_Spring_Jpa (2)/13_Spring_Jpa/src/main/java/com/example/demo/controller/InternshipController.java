package com.example.demo.controller;

import com.example.demo.model.Internship;
import com.example.demo.repository.InternshipRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class InternshipController {

    @Autowired
    private InternshipRepository internshipRepository;

    // Handle GET request to display internships
    @GetMapping("/internships/view")
    public String viewInternships(Model model) {
        List<Internship> internships = internshipRepository.findAll(); // Fetch all internships from the repository
        model.addAttribute("internships", internships); // Add the internships to the model
        return "viewInternships"; // Return the view name
    }

    // Handle the POST request to add an internship
    @PostMapping("/internships/add")
    public ModelAndView addInternship(@ModelAttribute Internship internship) {
        internshipRepository.save(internship); // Save the internship
        return new ModelAndView("redirect:/internships/view"); // Redirect to view internships
    }
}
