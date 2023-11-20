package com.java.aws.infratest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
    	

    	System.out.println("Calling Home controller");
    	
        return "index";
    }
}
